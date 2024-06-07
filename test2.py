import requests
import csv

def get_transactions(address, api_key):
    url = f"https://api.etherscan.io/api?module=account&action=txlist&address={address}&startblock=0&endblock=99999999&sort=asc&apikey={api_key}"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        return data.get('result')  # This returns the list of transactions
    else:
        return None

def save_transactions_to_csv(transactions, filename):
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        # Write the header row
        writer.writerow(['blockNumber', 'timeStamp', 'hash', 'nonce', 'blockHash',
                         'transactionIndex', 'from', 'to', 'value', 'gas',
                         'gasPrice', 'isError', 'txreceipt_status', 'input',
                         'contractAddress', 'cumulativeGasUsed', 'gasUsed', 'confirmations'])
        # Write the transaction data
        for tx in transactions:
            writer.writerow([tx['blockNumber'], tx['timeStamp'], tx['hash'], tx['nonce'], tx['blockHash'],
                             tx['transactionIndex'], tx['from'], tx['to'], tx['value'], tx['gas'],
                             tx['gasPrice'], tx['isError'], tx['txreceipt_status'], tx['input'],
                             tx['contractAddress'], tx['cumulativeGasUsed'], tx['gasUsed'], tx['confirmations']])

# Replace 'YOUR_ADDRESS' and 'YOUR_API_KEY' with your actual Ethereum address and Etherscan API key.
transactions = get_transactions('0x9A23A93905a0CEf884ACB6F6488BC5D7b964EF73', '')


if transactions:
    save_transactions_to_csv(transactions, 'transactions.csv')
    print("Transactions have been saved to 'transactions.csv'.")
else:
    print("No transactions found or error in fetching data.")
