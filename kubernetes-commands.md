### to create cluster
```
eksctl create cluster --name k8scluster --region xxxus-east-1 --zones us-east-1a,us-east-1b --nodegroup-name k8snodegroup --nodes 2 --nodes-min 1 --nodes-max 3 --managed
```

### To assign server as master for k8s cluster
```
aws eks update-kubeconfig --name dev --region us-east-1
```
## PODS and nodes command
```
kubectl delete pod podname
```
```
kubectl get pods
```
```
kubectl run k8spod --image reponame/imagename
```
```
kubectl get pods -o wide
```
```
kubectl describe pod podname
```

## Service commands
#### for pod
```
kubectl expose pod podname --type=NodePort --port=1234 --target-port=80/8080 --name=srvname
```
#### for replica set
```
kubectl expose rs podname --type=NodePort --port=1234 --target-port=80/8080 --name=srvname
```
```
kubectl get service
```
```
kubectl delete service srvname
```

## Replica commands

