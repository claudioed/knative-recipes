## Scale to zero feature

```shell script
curl -H "Host:message.hello.example.com" 35.222.220.194/message


curl -H "Host:message.hello.example.com" 35.222.220.194/message -s -o /dev/null -w  "Time Spent: %{time_starttransfer} Code: %{http_code}  \n"


```

## Check the autoscale configuration

```shell script
kubectl -n knative-serving get cm config-autoscaler -o yaml
```

