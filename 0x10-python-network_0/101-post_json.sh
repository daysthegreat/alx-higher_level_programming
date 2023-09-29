#!/bin/bash
# This script sends a JSON POST request to a URL with a file in the body
curl -sX POST -H "Content-Type: application/json" -d @"$2" "$1"
