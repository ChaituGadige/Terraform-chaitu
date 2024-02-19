### Pull an Image from Hub/Repository:
```
docker pull image_name
```
### Create a Container from an Image:
```
docker run -itd --name nameofserver -p a:b image
```
- -p a:b: Maps port a on the host to port b on the container.
- image: The image from which the container is created.
### Check List of Running Containers:
```
docker ps
```
### Check List of All Containers (including stopped ones):
```
docker ps -a
```
### Login to a Running Container:
```
docker exec -it container_id /bin/bash
```
- /bin/bash opens a Bash shell in the container.
### Stop a Running Container:
```
docker stop container_id
```
### Remove a Stopped Container:
```
docker rm container_id
```
### Forcefully Remove a Container:
```
docker rm -f container_id
```
### Remove an Image:
```
docker rmi image_name
```
### Commit a Container to Create an Image:
```
docker commit container_id repo_name/image_name
```
### Push an Image to Hub/Repository:
```
docker push repo_name/image_name
```
- repo_name/image_name: Name of the image to push to the repository.

### To create an image using Dockerfile
```
docker build -t own_image_name:v1 .
```
