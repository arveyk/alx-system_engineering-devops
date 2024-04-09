#!/usr/bin/python3
"""
Lists top ten reddit users
"""

import requests

url = "http://reddit.com/r/popular.json?sort=top?"
response = requests.get(url)
#    "https://www.reddit.com/api/v1/scopes.json",
#    headers={"User-Agent": "fetch-scopes by u/bboe"},

#for scope, data in sorted(response.json().items()):
#    print(f"{scope:>18s}  {data['description']}")
print(response)
top_ten = response
