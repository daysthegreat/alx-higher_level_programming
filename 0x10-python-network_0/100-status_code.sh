#!/bin/bash
# This script sends a request to a URL and displays the status code.
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")
echo "$response"
