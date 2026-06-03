#!/usr/bin/env bash
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8000/)

if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "service is workin: $HTTP_STATUS"
    exit 0
else
    echo "service is stopped: $HTTP_STATUS"
    exit 1
fi
