```shell script
kubectl create ns kubeless

kubectl get pods -n kubeless

kubeless function deploy toy --runtime python2.7 \
                              --handler toy.handler \
                              --from-file toy.py

```


##### [HOME](./../../../../README.md)