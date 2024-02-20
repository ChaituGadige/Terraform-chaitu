### to create cluster
```
eksctl create cluster --name k8scluster --region us-east-1 --zones us-east-1a,us-east-1b --nodegroup-name k8snodegroup --nodes 2 --nodes-min 1 --nodes-max 3 --managed
```

### To assign server as master for k8s cluster
```
aws eks update-kubeconfig --name dev --region us-east-1
```
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
