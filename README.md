
# Ethereum-Fraud-Detection

## Introduction
This project employs machine learning to detect Fraudulent Blockchain Accounts on the Ethereum blockchain, enhancing the security measures of cryptocurrency platforms. By integrating predictive analytics with blockchain technology, we aim to identify potential frauds effectively and mitigate risks for users.

## Project Scope
The goal of this project is to develop a reliable model that predicts fraudulent Ethereum accounts.we analyze historical transaction data to identify patterns and behaviors typical of fraud.


## Data Sources and Processing
The data for this project was sourced from both Kaggle and Etherscan, enriched with time-series analysis to capture the dynamics of Ethereum transactions, similar to approaches found in existing research and implementations.

### Kaggle Dataset
The Kaggle dataset, derived from a public competition, includes basic transaction metrics from numerous Ethereum accounts. This dataset provides a foundational understanding of typical account activities.

### Etherscan Dataset
Complementary real-time data from Etherscan focuses on accounts flagged for phishing or hacking, offering insights into malicious behaviors. 

### Time-Series Analysis
Utilizing the `tsfresh` library, extraction of time-dependent features that reveal the seasonality and trends of transaction activities was done. These features are critical for accurately predicting fraudulent behaviors.

### Data Integration and Preparation
The datasets from Kaggle and Etherscan were merged and processed to form a balanced and comprehensive view. Data cleaning, feature engineering, and transformations (such as log scaling and normalization) are performed to prepare the data for effective modeling. To learn more about similar approaches and the foundation of our methodology, you can visit the [Ethereum-Fraud-Detection repository](https://github.com/eltontay/Ethereum-Fraud-Detection).


## Machine Learning Model
Our approach includes several steps from data preparation to model evaluation:

### Model Architecture
We use a deep neural network with several layers configured to address binary classification tasks. The model includes:
- Dense layers with ReLU activation for non-linear transformation.
- Dropout layers to prevent overfitting.
- A sigmoid output layer for binary classification.

### Training Strategy
The model is trained using the Adam optimizer, with a binary cross-entropy loss function. We employ techniques like early stopping based on validation loss to fine-tune the training process without overtraining.

## Model Evaluation
Model performance is assessed through various metrics:
- Accuracy, Precision, and Recall
- F1 Score for balancing precision and recall
- ROC AUC Score to measure the model's ability to discriminate between classes



## Blockchain Integration
### Smart Contract: `AddressManager`
The `AddressManager` smart contract, deployed on the Sepolia network, plays a pivotal role:
- **Store and Mark Addresses**: Functions to store new addresses and mark them as 'Good' or 'Possible Fraud' based on model predictions.
- **Query and Retrieve**: Functions to check the status of addresses and retrieve lists of unmarked addresses.

### Contract Functions
- **storeAddress**: Adds a new Ethereum address to the system.
- **markAsPossibleFraud**: Marks an address as potentially fraudulent.
- **markAsGood**: Marks an address as non-fraudulent.
- **getMarkedStatus**: Retrieves the current status of an address.

` Cintract Address - 0x9767d71A623cEF6B8ddaEe0d41d4fDF4dC7774fF`

### Giza Agent Functionality and Blockchain Integration

The integration of the Giza Agent is pivotal to applying our machine learning insights to actual blockchain operations. This agent acts as the intermediary, making predictions and ensuring they are secure and verifiable.

#### Key Features of the Giza Agent:
- **Model Integration**: Integrates with a TensorFlow model to predict potential fraud based on transaction data.
- **Smart Contract Interaction**: Interfaces with the `AddressManager` smart contract on the Sepolia network, allowing the agent to mark addresses based on predictions.
- **Verifiable Predictions**: Ensures that predictions are transparent and traceable enhancing trust.
- **Operational Commands**: Executes blockchain transactions such as storing new addresses and updating their statuses based on model outputs.

#### Usage:
- **Initialization**: Configured with specific model identifiers and blockchain settings to ensure accurate deployment.
- **Execution**: Processes input through the model to predict fraud likelihood and interacts with the blockchain to reflect these predictions.
- **Blockchain Update**: Communicates with the smart contract to mark addresses as 'Good' or 'Possible Fraud' based on the predictive outcome.

### Integration in Project Workflow
This agent is crucial for automating the entire process from predictions to actionable blockchain updates, ensuring a seamless flow:
1. **Data Analysis**: Analyze transaction data to prepare inputs for the model.
2. **Prediction**: Use the model to assess the likelihood of fraud.
3. **Blockchain Update**: Based on the prediction, update the blockchain status of the address through the smart contract.


# Transaction and Operation Log

## Deserialization Process
- **Job Size**: `M`
- **Arguments**: `[1 12] [9146 0 39166 0 38577 0 13846 0 53633 0 31863 0 34252 0 42838 0 39012 0 13760 0 30400 0 30400 0]`

🚀 **Starting deserialization process...**
✅ **Deserialization completed!** 🎉

## Connection Information
**INFO**: Connecting to existing Geth node at https://sepolia.drpc.org/[hidden].
**WARNING**: Danger! This account will now sign any transaction it's given.
**WARNING**: Using cached key for detect_agent

## Transaction Submission
**INFO**: Submitted [Transaction on Sepolia Etherscan](https://sepolia.etherscan.io/tx/0x9d3d22695f799abc5b45faeaad10b23960470d99df71e0a3aa34a15ac48fa5fd)

## Confirmation Progress
Confirmations (2/2): 100%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 2/2 [00:26<00:00, 13.29s/it]

## Fees and Receipt
**INFO**: Confirmed 0x9d3d22695f799abc5b45faeaad10b23960470d99df71e0a3aa34a15ac48fa5fd (total fees paid = 46088058137004)
**Receipt**: <Receipt 0x9d3d22695f799abc5b45faeaad10b23960470d99df71e0a3aa34a15ac48fa5fd>


## Installation and Usage
Instructions for setting up and using the project:
```bash
git clone https://github.com/Kagwep/ETH-Accounts-Fraud-Detection-Agent
cd ETH-Accounts-Fraud-Detection-Agent
# Execute model training and evaluation scripts
# Deploy and interact with the smart contract
```

### Agent Business Case
The Giza Agent facilitates the direct integration of machine learning insights with blockchain operations, providing a robust system for detecting and managing fraudulent Ethereum accounts. The business case for using this agent includes:

- **Enhanced Security**: Ensures that actions based on predictive analytics are recorded immutably on the blockchain, enhancing the trust and reliability of these actions.
- **Operational Efficiency**: Automates the detection and marking of fraudulent accounts, reducing manual overhead and increasing response times to potential threats.
- **Verifiability and Transparency**: Each prediction and subsequent action taken by the agent is verifiable on the blockchain, providing transparency and facilitating auditability, which is crucial in regulated environments.

### Attack Vectors and Model Limitations

- **Model Security**:  Regularly update and validate the predictive model to prevent adversaries from exploiting outdated algorithms or biased data. It's important to note that while the model strives for high accuracy, it is not infallible and may not capture all fraudulent activities or may flag false positives. Continuous improvement is part of the commitment.


## Future Directions and Improvements
Potential areas for further development include:
- Expanding the dataset to include more diverse transaction types.
- Enhancing the model's architecture for better performance and scalability.
- Implementing real-time fraud detection systems on multiple blockchains.






