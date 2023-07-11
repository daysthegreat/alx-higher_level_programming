#!/usr/bin/python3
"""Defines a string-to-JSON function."""


def to_json_string(my_obj):
    import json
    return json.dumps(my_obj)
