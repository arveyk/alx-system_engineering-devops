#!/usr/bin/python3
""" Script that returns an employees info using RESTful api
"""
import requests
import sys
import csv
import json

employee_id = sys.argv[1]
url = "https://jsonplaceholder.typicode.com/todos/" + employee_id
response = requests.get(url)
json_resp = response.json()

print("{}".format(json_resp))

names = ["EMPLOYEE_NAME",
         "NUMBER_OF_TASKS",
         "TOTAL_NUMBER_OF_TASKS"
         ]

for name in json_resp:
    if json_resp[name]:
        print(json_resp[name])

print('Employee {} is done with'.format(json_resp['completed']))
print('\t{}'.format(json_resp['title']))

with open("response.text", "w") as file_json:
    file_json.write(response.text)

with open("USER.csv", "w") as user_csv:
    fields = ["USER_ID", "USERNAME", "TASK_COMPLETED_STATUS", "TASK_TITLE"]
    csv_write = csv.DictWriter(user_csv, fieldnames=fields)

    for line in response.text:
        csv_write.writerow(line)

with open("USER_ID.json", "w") as json_file:
    json.dumps(response.text, json_file)
