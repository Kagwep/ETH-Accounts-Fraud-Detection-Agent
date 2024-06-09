import requests
import pandas as pd

class TransactionAnalyzer:
    def __init__(self, address, api_key):
        self.address = address.lower()  # Normalize the address to lowercase
        self.api_key = api_key

    def fetch_transactions(self):
        url = f"https://api.etherscan.io/api?module=account&action=txlist&address={self.address}&startblock=0&endblock=99999999&sort=asc&apikey={self.api_key}"
        response = requests.get(url)
        if response.status_code == 200:
            data = response.json()
            if data['status'] == '1' and data['message'] == 'OK':
                transactions = data['result']
                # Convert directly into DataFrame with specific columns
                transactions_df = pd.DataFrame(transactions)
                transactions_df = transactions_df[['blockNumber', 'timeStamp', 'hash', 'nonce', 'blockHash',
                                                   'transactionIndex', 'from', 'to', 'value', 'gas',
                                                   'gasPrice', 'isError', 'txreceipt_status', 'input',
                                                   'contractAddress', 'cumulativeGasUsed', 'gasUsed', 'confirmations']]
                return transactions_df
            else:
                print("No transactions found or an error occurred with the API.")
                return pd.DataFrame()  # Return an empty DataFrame in case of API error
        else:
            print(f"Failed to fetch transactions: HTTP {response.status_code}")
            return None

    def calculate_metrics(self, transactions_df):
        if transactions_df is not None and not transactions_df.empty:
         
            # Convert the 'value' column to integers for calculation purposes
            # This assumes all values in the 'value' column are numeric and can be converted to integers
            transactions_df['value'] = transactions_df['value'].apply(int)


            # Convert timestamps from string to datetime
            transactions_df['timeStamp'] = pd.to_datetime(transactions_df['timeStamp'], unit='s')

            # Calculate time differences in minutes for subsequent transactions
            transactions_df.sort_values('timeStamp', inplace=True)
            transactions_df['time_diff'] = transactions_df['timeStamp'].diff().dt.total_seconds() / 60

            # Filter out sent and received transactions
            sent_transactions = transactions_df[transactions_df['from'].str.lower() == self.address.lower()]
            received_transactions = transactions_df[transactions_df['to'].str.lower() == self.address.lower()]

            metrics = {
                'Avg min between sent tnx': sent_transactions['time_diff'].mean() if not sent_transactions.empty else 0,
                'Avg min between received tnx': received_transactions['time_diff'].mean() if not received_transactions.empty else 0,
                'Time Diff between first and last (Mins)': (transactions_df['timeStamp'].iloc[-1] - transactions_df['timeStamp'].iloc[0]).total_seconds() / 60 if not transactions_df.empty else 0,
                'Unique Received From Addresses': received_transactions['from'].nunique() if not received_transactions.empty else 0,
                'min value received': received_transactions['value'].min() / 1e18 if not received_transactions.empty else 0,
                'max value received ': received_transactions['value'].max() / 1e18 if not received_transactions.empty else 0,
                'avg val received': received_transactions['value'].mean() / 1e18 if not received_transactions.empty else 0,
                'min val sent': sent_transactions['value'].min() / 1e18 if not sent_transactions.empty else 0,
                'avg val sent': sent_transactions['value'].mean() / 1e18 if not sent_transactions.empty else 0,
                'total transactions (including tnx to create contract': transactions_df.shape[0],
                'total ether received': received_transactions['value'].sum() / 1e18 if not received_transactions.empty else 0,
                'total ether balance': transactions_df['value'].sum() / 1e18  if not transactions_df.empty else 0
            }

            return metrics
        else:
            return {}

    def get_metrics(self):
        transactions_df = self.fetch_transactions()
        if transactions_df is not None:
            return self.calculate_metrics(transactions_df)
        else:
            return "Failed to fetch or process transactions."