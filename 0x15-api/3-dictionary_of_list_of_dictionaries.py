#!/usr/bin/python3
""" Script that returns an employees info using RESTful api
"""
import csv
import json
import requests
import sys

if __name__ == '__main__':
    """ Added to prevent execution when imported"""

    users_Url = f"https://jsonplaceholder.typicode.com/users"
    user_response = requests.get(users_Url)
    users = user_response.json()

    user_data = {}

    for user in users:
        userid = user["id"]
        username = user["username"]

        user_url = f"https://jsonplaceholder.typicode.com/users/{userid}/todos"
        response = requests.get(user_url)
        json_resp = response.json()

        resp_len = len(json_resp)

        user_data[f"{userid}"] = [{
                "task": json_resp[0]["title"],
                "completed": json_resp[0]["completed"],
                "username": user["username"]
                }]

        for index in range(1, resp_len):
            user_data[f"{userid}"].append({
                "task": json_resp[index]["title"],
                "completed": json_resp[index]["completed"],
                "username": user["username"]
                })

    with open("todo_all_employees.json", "w") as json_file:
        json.dump(user_data, json_file)
