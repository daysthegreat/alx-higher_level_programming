#!/bin/bash
# Display all HTTP methods accepted by the server for a given URL
curl -I -X OPTIONS "$1" | grep "Allow:" | cut -d ' ' -f 2-
