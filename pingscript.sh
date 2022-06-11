#!/bin/bash
HTTPCODE=$(curl -o /dev/null -s -w "%{http_code}\n" $1)

echo $HTTPCODE

if [[ $HTTPCODE -eq 200 ]]
then
    echo "Success"
else
    echo "Failure"
fi