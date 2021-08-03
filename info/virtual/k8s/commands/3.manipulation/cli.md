##### зайти в под
```shell script
  kubectl exec -it podName -n namespaceName-- bash
```

##### зайти в под в конкретный контейнер (если несколько контейнеров в поде)
```shell script
  kubectl exec -it podName -n mf-dmp-staging --container containerName  -- bash
```

##### [HOME](./../../../../../README.md)