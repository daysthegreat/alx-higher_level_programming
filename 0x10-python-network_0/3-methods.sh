#!/bin/bash
# Display all HTTP methods accepted by the server for a given URL
curl -sI "$1" | grep "Allow:" | sed -ne 's/^Allow: //p'
