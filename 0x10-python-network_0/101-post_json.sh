#!/bin/bash
# This script sends a JSON POST request to a URL with a file in the body
curl -X POST -H "Content-Type: application/json" --data-binary "@$2" $1
