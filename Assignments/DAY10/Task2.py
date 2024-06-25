# handle_http_errors.py
import requests

def make_api_request(url):
    try:
        response = requests.get(url)
        response.raise_for_status()  # Raise an exception for 4xx or 5xx status codes
    except requests.exceptions.HTTPError as http_err:
        print(f"HTTP error occurred: {http_err}")
    except requests.exceptions.ConnectionError as conn_err:
        print(f"Error connecting to the API: {conn_err}")
    except requests.exceptions.Timeout as timeout_err:
        print(f"Timeout error: {timeout_err}")
    except requests.exceptions.RequestException as err:
        print(f"Something went wrong: {err}")
    else:
        print("Request successful!")
        print(response.json())

# Make an API request
make_api_request("https://example.com/api/resource")