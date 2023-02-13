
Basic and Pod 
===============
kubectl cluster-info
kubectl get nodes -o wide
kubectl run nginx --image nginx
kubectl get pods
kubectl create -f pod-definition.yml
kubectl describe pod <pod-name>
kubectl delete pod <pod-name>
kubectl get pod <pod-name> -o yaml > pod-definition.yml
kubectl edit pod <pod-name>

ReplicSet
==========
kubectl get rs
kubectl create -f replication-controller.yml
kubectl get replicationcontroller
kubectl create -f replicaset-basic.yml
kubectl get replicaset
kubectl delete -f replication-controller.yml
kubectl scale --replicas=6 -f myapp-rs 
kubectl delete replicaset myapp-rs

Deployment
============
kubectl create deployment --image=nginx nginx
kubectl create deployment --image=nginx nginx --dry-run -o yaml
kubectl create deployment nginx --image=nginx --replicas=4
kubectl scale deployment nginx --replicas=6
kubectl create deployment nginx --image=nginx--dry-run=client -o yaml > nginx-deployment.yaml

Namespaces
============
kubectl get namespaces
kubectl run redis --image redis -n finance
kubectl get pods -A 
kubectl get pods --namespace=<namespace-name>

Service
=======
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml
kubectl create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml (assume selectors as app=redis)
