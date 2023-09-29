#!/bin/bash
# Send a GET request to the URL with X-School-User-Id header and display the response body
curl -sX GET -H "X-School-User-Id: 98" "$1"
