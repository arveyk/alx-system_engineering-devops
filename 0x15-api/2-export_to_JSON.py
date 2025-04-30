#!/usr/bin/python3
""" Script that returns an employees info using RESTful api
"""
import csv
import json
import requests
import sys

if __name__ == '__main__':
    """ Added to prevent execution when imported"""
    user_id = sys.argv[1]
    url = f"https://jsonplaceholder.typicode.com/users/{user_id}/todos"
    response = requests.get(url)
    json_resp = response.json()

    user_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    user_response = requests.get(user_url)
    user = user_response.json()

    resp_len = len(json_resp)

    data = {f"{user_id}": [{
            "task": json_resp[0]["title"],
            "completed": json_resp[0]["completed"],
            "username": user["username"]
            }]
            }
    for index in range(1, resp_len):
        data[f"{user_id}"].append({
                "task": json_resp[index]["title"],
                "completed": json_resp[index]["completed"],
                "username": user["username"]
                })
    with open(f"{user_id}.json", "w") as json_file:
        json.dump(data, json_file)
