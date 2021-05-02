# 1. Docker
```
docker version
docker network ls
```

# 2. Command line

```
docker pull ubuntu
docker run -dit -name gvr1 ubuntu
docker run -dit -name gvr2 ubuntu
```

# 3. Communication between 2 containers with docker file

```
docker build -f 1-sample.Dockerfile -t gvr-image:1
docker run -d --name gvr1 gvr-image:1

docker run -dit -name g1 gvr-image:1
docker run -dit -name g2 gvr-image:1
docker run -dit -name g3 gvr-image:1
```

# 3. Communication between 2 containers web example
```
docker run -d --name web1 -p 8001:80 eboraas/apache-php
docker run -d --name web2 -p 8002:80 eboraas/apache-php
docker run -d --name web3 -p 8002:80 eboraas/apache-php
```

# 4. network
```
docker network create gvr-network

docker network connect gvr-network web1
docker network connect gvr-network web1
docker network connect gvr-network web3

docker network inspect gvr-network
```

# check insdie the container
```
docker exec -it g1 bash
apt update
apt install iputils
ping g2 -c 3
```
# docker compose
```
docker-compose -f mongo.yaml up -d
```
