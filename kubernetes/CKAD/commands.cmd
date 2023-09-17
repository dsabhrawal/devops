kubectl completion -help 
kubectl api-resources #for checking short names 
kubectl explain pod # get details of all the sections of a resource



Basic and Pod 
===============
kubectl cluster-info
kubectl get-apiresources
kubectl get nodes -o wide
kubectl run nginx --image nginx
kubectl get pods
kubectl create -f pod-definition.yml
kubectl describe pod <pod-name>
kubectl delete pod <pod-name> --now
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
kubectl rollout status deployment/deployment01
kubectl rollout history deployment/deployment01
kubectl rollout undo deployment/deployment01


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
#Create a Service named nginx of type NodePort to expose pod nginx's port 80 on port 30080 on the nodes (can not specify NodePort)
kubectl expose pod nginx --port=80 --name nginx-service --type=NodePort --dry-run=client -o yaml


kind cluster
============
#Create Kind cluster with config 
kind create cluster --config kind-cluster.yaml --name ckad
#load images 
kind load docker-image ubuntu:sleeper -n c1
#images available inside cluster 
docker exec -it $(kind get clusters | head -1)-control-plane crictl images

Taint and Tolerant
============
kubectl taint node node-name key=value:taint-effect (NoSchedule/PreferNoSchdule/NoExecute)

