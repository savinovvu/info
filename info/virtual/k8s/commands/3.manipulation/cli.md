##### зайти в под
```shell script
  kubectl exec -it podName -n namespaceName-- bash
```

##### зайти в под в конкретный контейнер (если несколько контейнеров в поде)
```shell script
  kubectl exec -it podName -n mf-dmp-staging --container containerName  -- bash
```

##### Run POD with kubectl
```shell script
kubectl run http --image=katacoda/docker-http-server:latest --replicas=1
```


##### Expose port
```shell script
kubectl expose deployment http --external-ip="172.17.0.48" --port=8000 --target-port=80
```

##### [HOME](./../../../../../README.md)