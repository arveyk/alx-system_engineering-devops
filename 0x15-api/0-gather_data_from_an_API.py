#!/usr/bin/python3
""" Script that returns an employees info using RESTful api """
import requests
import sys


# print ("Employee EMPLOYEE_NAME is done with tasks
# (NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):
#        EMPLOYEE_NAME: name of the employee
#        NUMBER_OF_DONE_TASKS: number of completed tasks
#        TOTAL_NUMBER_OF_TASKS: total number
# f tasks, which is the sum of completed and non-completed tasks
#                "

if __name__ == '__main__':
    """ This ensures the module is not executes when imported """
    employee_id = sys.argv[1]
    url = f"https://jsonplaceholder.typicode.com/users/{employee_id}/todos/"
    response = requests.get(url)
    json_resp = response.json()

    user_url = f"https://jsonplaceholder.typicode.com/users/{employee_id}"
    response2 = requests.get(user_url)
    user = response2.json()

    response_len = len(json_resp)
    tasks_done = 0
    tasks_list = []

    for index in range(response_len):
        if json_resp[index]["completed"]:
            tasks_done += 1
            tasks_list.append(json_resp[index]["title"])

    print('Employee {} is done with tasks({}/{}):'.format(
          user["name"],
          tasks_done, response_len))
    for elem in tasks_list:
        print('\t {}'.format(elem))
