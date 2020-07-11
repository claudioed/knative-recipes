#!/bin/bash
while true; do sleep 0.1; curl -s -w "\nTime:  %{time_total}s Code: %{http_code}\n" -H "Host:message.hello.example.com" 35.222.220.194/message;  echo  -e ; done;