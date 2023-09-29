#!/bin/bash
# This script sends a request to 0.0.0.0:5000/catch_me and captures the response
curl -X PUT -s 0.0.0.0:5000/catch_me -d "You got me!"
