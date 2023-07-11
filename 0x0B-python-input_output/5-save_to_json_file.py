#!/usr/bin/python3
"""Defines a JSON file-writing function."""
import json


def save_to_json_file(my_obj, filename):
    with open(filename, 'w') as file:
        try:
            json.dump(my_obj, file)
        except TypeError:
            pass
