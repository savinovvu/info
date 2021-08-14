### Pods & Objects
#### deploy info
```shell script
kubectl get deploy/deployName -o yaml
kubectl get pod/podName -o yaml
```
#### see all objects
```shell script
kubectl get pods --all-namespaces
```
#### pods monitoring
```shell script
kubectl get pods -w
```

#### extends info
kubectl get pods -o wide

#### Observe Objects
```shell script
watch kubectl get deployments,pods,services --namespace=default
```

#### show replication controller
```shell script
kubectl get rc
```


#### show namespace
```shell script
kubectl get namespaces
```


#### cluster info
```shell script
kubectl cluster-info
kubectl cluster-info dump
kubectl config view
kubectl config get-contexts
```


#### cluster nodes
```shell script
kubectl get nodes
```




### API
##### see all api objects
```shell script
kubectl api-resources
```
### RESOURCES

#### check resources
```shell script
kubectl describe resourcequotas -n nameSpaceName
```


##### CPU, MEMORY if metric api available
kubectl top node
kubectl top pod

### NETWORK
















##### [HOME](./../../../../../README.md)