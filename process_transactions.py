import pandas as pd

# Load transactions from a CSV file
transactions_df = pd.read_csv('transactions.csv')

# Convert the 'value' column to integers for calculation purposes
# This assumes all values in the 'value' column are numeric and can be converted to integers
transactions_df['value'] = transactions_df['value'].astype(int)

# Convert timestamps from string to datetime
transactions_df['timeStamp'] = pd.to_datetime(transactions_df['timeStamp'], unit='s')

# Calculate time differences in minutes for subsequent transactions
transactions_df.sort_values('timeStamp', inplace=True)
transactions_df['time_diff'] = transactions_df['timeStamp'].diff().dt.total_seconds() / 60

# Filter out sent and received transactions
sent_transactions = transactions_df[transactions_df['from'].str.lower() == '0x9A23A93905a0CEf884ACB6F6488BC5D7b964EF73'.lower()]
received_transactions = transactions_df[transactions_df['to'].str.lower() == '0x9A23A93905a0CEf884ACB6F6488BC5D7b964EF73'.lower()]

# Calculate various metrics with conversions from Wei to Ether
metrics = {
    'Avg min between sent tnx': sent_transactions['time_diff'].mean(),
    'Avg min between received tnx': received_transactions['time_diff'].mean(),
    'Time Diff between first and last (Mins)': (transactions_df['timeStamp'].iloc[-1] - transactions_df['timeStamp'].iloc[0]).total_seconds() / 60,
    'Unique Received From Addresses': received_transactions['from'].nunique(),
    'min value received': received_transactions['value'].min() / 1e18,
    'max value received': received_transactions['value'].max() / 1e18,
    'avg val received': received_transactions['value'].mean() / 1e18,
    'min val sent': sent_transactions['value'].min() / 1e18,
    'avg val sent': sent_transactions['value'].mean() / 1e18,
    'total transactions (including tnx to create contract': transactions_df.shape[0],
    'total ether received': received_transactions['value'].sum() / 1e18,
    'total ether balance': transactions_df['value'].sum() / 1e18  # Simplistic balance calculation
}

print(metrics)
