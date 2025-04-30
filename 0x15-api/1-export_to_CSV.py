#!/usr/bin/python3
""" Script that returns an employees info using RESTful api """
import csv
import requests
import sys

# print("{}".format(json_resp))

if __name__ == '__main__':
    """ Addede to avoid execution when imported"""

    user_id = sys.argv[1]

    url = f"https://jsonplaceholder.typicode.com/users/{user_id}/todos/"

    response = requests.get(url)
    json_resp = response.json()

    user_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    
    response2 = requests.get(user_url)
    user = response2.json()

    response_len = len(json_resp)
    tasks_done = 0
    tasks_list = []

    for index in range(response_len):
        if json_resp[index]["completed"]:
            tasks_done += 1
            tasks_list.append(json_resp[index]["title"])

    with open(f"{user_id}.csv", "w") as user_csv:
        fields = ["userId", "name", "status", "title"]

        csv_writer = csv.DictWriter(user_csv, fieldnames=fields)
        for element in range(response_len):
            csv_writer.writerow({
                "userId": f"{user_id}",
                "name": user["username"],
                "status": json_resp[element]["completed"],
                "title": json_resp[element]["title"]
                })
