import requests

url = "https://xi62026.central-india(pune).azure.snowflakecomputing.com"
try:
    response = requests.get(url)
    print(response.status_code)
except requests.ConnectionError as e:
    print(f"Failed to connect: {e}")
