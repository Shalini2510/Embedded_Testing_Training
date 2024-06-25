# oauth_restful_service.py
import requests
import oauthlib.oauth2
from requests_oauthlib import OAuth2Session

# OAuth settings
client_id = "your_client_id"
client_secret = "your_client_secret"
authorization_base_url = "https://example.com/oauth/authorize"
token_url = "https://example.com/oauth/token"

# OAuth scopes
scopes = ["profile", "email"]

# Create an OAuth2 session
oauth = OAuth2Session(client_id, scope=scopes)

# Redirect user to authorization URL
authorization_url, state = oauth.authorization_url(authorization_base_url)
print("Please go to %s and authorize access." % authorization_url)

# Get the authorization code
authorization_code = input("Enter the authorization code: ")

# Fetch the access token
token = oauth.fetch_token(token_url, client_secret=client_secret, code=authorization_code)

# Use the access token to make a request to the RESTful service
response = oauth.get("https://example.com/api/resource")

# Print the response content
print(response.json())