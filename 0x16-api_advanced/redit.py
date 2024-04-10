#!/usr/bin/python3

import requests
import json

url = 'https://www.reddit.com/r/programming/about.json'

resp = requests.get(url)

subs_n = resp.json()
print((subs_n))

url = 'https://www.reddit.com/r/active_user_count/about.json'
subs_n = resp.text
print(subs_n[-1])

