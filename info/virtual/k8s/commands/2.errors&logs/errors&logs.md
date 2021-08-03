##### События ошибок в кластере
```shell script
kubectl get events -n mf-namespaceName | grep Error
kubectl get events -n namespaceName --sort-by='.metadata.creationTimestamp'
```


##### посмотреть логи в поде в фоновом режиме
```shell script
kubectl logs -f podName
```
  
##### [HOME](./../../../../../README.md)