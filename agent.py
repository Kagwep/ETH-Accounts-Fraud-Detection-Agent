import pprint
import numpy as np
from transactions_analyzer import TransactionAnalyzer
from joblib import load
from giza.agents import GizaAgent, AgentResult
from metrics_scaler import MetricsScaler

import os
os.environ['DETECT_AGENT_PASSPHRASE'] = 'watuwengi'
os.environ['ETHER_SCAN_API_KEY'] = 'BM3TMP8VVGHAQGQGDFMDFD185Q7Z85X765'

# Make sure to fill these in
MODEL_ID = 748
VERSION_ID = 2
# As we are executing in sepolia, we need to specify the chain
CHAIN = "ethereum:sepolia:geth"
# The address of the deployed contract
ADDRESS_MANAGER_CONTRACT = "0x9767d71A623cEF6B8ddaEe0d41d4fDF4dC7774fF"

account_address = "0x902d0d5bb6a34307bbd1da33e61ae1654b6cbe1e"
api_key = os.environ.get('ETHER_SCAN_API_KEY')

# Usage
analyzer = TransactionAnalyzer(account_address, api_key)
metrics = analyzer.get_metrics()
scaler_path = './scaler.joblib'
scaler = MetricsScaler(scaler_path)
metrics_scaled = scaler.scale_metrics(metrics)

print(metrics_scaled)


def create_agent(model_id: int, version_id: int, chain: str, contract: str):
    """
    Create a Giza agent for the AddressManager model with verifiable_fraud_eth_account_detection_agent 
    """
    agent = GizaAgent(
        contracts={"AddressManager": contract},
        id=model_id,
        version_id=version_id,
        chain=chain,
        account="detect_agent"
    )
    return agent



def predict(agent: GizaAgent):

    input = metrics_scaled.astype(np.float32)

    prediction = agent.predict(
        input_feed={"input": input}, verifiable=True
    )
    return prediction

def get_fraud_class(prediction: AgentResult):
    """
    Get the class from the prediction based on a sigmoid output.

    Args:
        prediction (dict): Prediction from the model. Expects a structure where
                           the probability is located at prediction.value[0][0].

    Returns:
        int: Predicted class, 1 if the predicted probability is >= 0.5, otherwise 0.
    """
    
    # Extract the predicted probability from the nested list
    predicted_probability = prediction.value[0][0]
    
    # Determine the class based on the probability
    predicted_class = 1 if predicted_probability >= 0.5 else 0
    
    return predicted_class


def execute_contract(agent: GizaAgent, flag_class: int):
    """
    Execute a fraud detection contract based on the predicted class to take
    an appropriate action, such as marking an account as possibly fraudulent or good.

    Args:
        agent (GizaAgent): Instance of GizaAgent, used to interact with blockchain contracts.
        prediction (dict): Prediction from the model, where the fraud prediction
                           probability is located at prediction.value[0][0].
        account_address (str): Blockchain address of the account to be marked.

    Returns:
        str: Result of the contract execution, such as a transaction hash or a confirmation message.
    """

    with agent.execute() as contracts:
        if flag_class == 0:
            contract_result = contracts.AddressManager.markAsPossibleFraud(account_address)
        elif(flag_class == 1):
            contract_result = contracts.AddressManager.markAsGood(account_address)

    return contract_result


def sign_prediction():
    # Preprocess image

    # Create Giza agent
    agent = create_agent(MODEL_ID, VERSION_ID, CHAIN, ADDRESS_MANAGER_CONTRACT)
    # Predict class
    prediction = predict(agent)
    # Get class
    fraud_class = get_fraud_class(prediction)
    # Execute contract
    result = execute_contract(agent, fraud_class)
    pprint.pprint(result)



sign_prediction()