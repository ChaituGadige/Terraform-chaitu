### to create cluster
```
eksctl create cluster --name k8scluster --region us-east-1 --zones us-east-1a,us-east-1b --nodegroup-name k8snodegroup --nodes 2 --nodes-min 1 --nodes-max 3 --managed
```
