#!/usr/bin/python3
"""
Script using reddit api to print subscribers
"""
import requests
import urllib

url = 'https://www.reddit.com/r/programming/about.json'
response = requests.get(url)
number_of_subscribers = response.data

