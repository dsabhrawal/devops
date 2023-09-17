#stop all container with a filter 
docker rm $(docker ps --filter status=exited -q)
docker rm $(docker ps --filter status=created -q)

#build docker file 
docker build -t ubuntu:sleep -f docker.dockerfile .

# Remove docker container on stopping 
docker run -itd --network [network name] --rm --name rio busybox 