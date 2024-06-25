# post_request.py
import requests
import json

# API endpoint
url = "https://jsonplaceholder.typicode.com/posts"

# JSON data to be sent
data = {
    "title": "foo",
    "body": "bar",
    "userId": 1
}

# Convert the data to JSON
json_data = json.dumps(data)

# Set the headers to indicate JSON content
headers = {"Content-Type": "application/json"}

# Make a POST request
response = requests.post(url, data=json_data, headers=headers)

# Check if the request was successful
if response.status_code == 201:
    # Print the response content
    print(response.json())
else:
    print("Failed to create resource:", response.status_code)