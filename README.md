# GDM(Git,Docker,Markdown) Usage Example
This docker container contains Tensorflow Study Examples and a test Enviroment.
Tensorflow Study Example cloned from https://github.com/Finfra/TensorflowStudyExample.git .


# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t nowage/tensorflow_study .
	docker run -it --rm --name t1 -p 8888:8888 nowage/tensorflow_study
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                              NAMES
c37c1b1099ae        nowage/tensorflow_study   "/run_jupyter.sh --a…"   9 seconds ago       Up 8 seconds        6006/tcp, 0.0.0.0:8888->8888/tcp   t1
```
# Running Example for Public Users
```
docker rm -f t1
mkdir ~/df
docker run -it --name t1 -p 8888:8888 -v ~/df:/notebooks/df nowage/tensorflow_study
```

# To Rollback
```
    docker rm t1 -f
    docker rmi nowage/tensorflow_study
```

# Push to github(Example)
```
$ docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: nowage
Password:
Login Succeeded
$ docker push nowage/tensorflow_study
The push refers to repository [docker.io/nowage/tensorflow_study]
a6ae023949a0: Pushed
c18fd2c5a80b: Pushed
8c70c67410c8: Pushed
9705cd656dad: Mounted from tensorflow/tensorflow
620e50f4ad51: Mounted from tensorflow/tensorflow
2df6cbd51d4c: Mounted from tensorflow/tensorflow
1f3c2dba4224: Mounted from tensorflow/tensorflow
ad3d928d62e9: Mounted from tensorflow/tensorflow
20335de15f9a: Mounted from tensorflow/tensorflow
d38fd797a4b6: Mounted from tensorflow/tensorflow
8a09590089c4: Mounted from tensorflow/tensorflow
d7232280c8c4: Mounted from tensorflow/tensorflow
07663827a77f: Mounted from tensorflow/tensorflow
87a2d0000622: Mounted from tensorflow/tensorflow
4a7a5ec0f29e: Mounted from tensorflow/tensorflow
8823818c4748: Mounted from tensorflow/tensorflow
latest: digest: sha256:ee327564ba0f777c2cebea9bebea2c956cecd9f7d87679d90ac8ec54a0baae65 size: 3669
```
