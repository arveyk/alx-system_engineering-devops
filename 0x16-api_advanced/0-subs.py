#!/usr/bin/python3
"""
Script using reddit api to print subscribers
"""
import requests
import urllib


def number_of_subscribers(subreddit):
    """ Querys for the number of subscribers in a given subredit
        Args:
            Subreddit: the subredit string to be queried
        Returns: the number of subscribers
        """
    url = 'https://www.reddit.com/r/' + subreddit + '/about.json'
    response = requests.get(url)
    res_json = response.json()
    subs_n = res_json['data']['subscribers']
    return subs_n
