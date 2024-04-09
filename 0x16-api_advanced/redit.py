#!/usr/bin/python3

import requests

url = 'https://www.reddit.com/r/programming/about.json'

resp = requests.get(url)

print(resp)
