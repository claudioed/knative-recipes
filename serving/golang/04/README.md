## Applying Canary Release


```shell script
curl -H "Host:message.hello.example.com" 35.222.220.194/message
```

### Check the revisions
```shell script
kubectl get revisions -n hello
```

It will show the two revisions that we deployed, remember it represents the 
immutable infrastructure (service + config + revisions)

### Check the configuration
```shell script
kubectl get configuration -n hello
```

It will show the configuration, look at containers section

### Routing

Knative will route the 100% of traffic to new revision, sometimes it is not desired.

### Check the traffic

```shell script
while true; do sleep 0.5; curl -H "Host:message.hello.example.com" 35.222.220.194/message;  echo -e '\n'; done; 
```