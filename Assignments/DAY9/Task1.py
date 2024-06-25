# get_request.py
import requests

# Public API endpoint
url = "https://api.github.com/users/octocat"

# Make a GET request
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    # Print the response content
    print(response.json())
else:
    print("Failed to retrieve data:", response.status_code)