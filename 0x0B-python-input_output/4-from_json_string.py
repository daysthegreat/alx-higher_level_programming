#!/usr/bin/python3
"""Defines a JSON-to-object function."""


def from_json_string(my_str):
    import json
    return json.loads(my_str)
