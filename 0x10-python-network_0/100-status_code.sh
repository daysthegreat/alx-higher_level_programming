#!/bin/bash
# This script sends a request to a URL and displays the status code.
curl -so /dev/null --write-out "%{http_code}" "$1"
