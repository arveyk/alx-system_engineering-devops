#!/usr/bin/python3
""" Script that returns an employees info using RESTful api
"""
import requests
import sys

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

# print ("Employee EMPLOYEE_NAME is done with tasks
# (NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):
#        EMPLOYEE_NAME: name of the employee
#        NUMBER_OF_DONE_TASKS: number of completed tasks
#        TOTAL_NUMBER_OF_TASKS: total number
# f tasks, which is the sum of completed and non-completed tasks
#                "
