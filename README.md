## This repo was created for debugging headers that incoming to the backend

1. Clone this repo
2. Run docker build first
`docker build -t somerepo/somedir:tag .`
if you are using multi acrhitecture, follow these steps:

- `docker build -t docker.io/salamflamo/express-js-sample:manifest-arm64 --build-arg ARCH=arm64/ .` #running this command on arm machine
- `docker build -t docker.io/salamflamo/express-js-sample:manifest-amd64 --build-arg ARCH=amd64/ .` #running this command on amd machine

```
docker manifest create \
docker.io/salamflamo/express-js-sample:multi \
--amend docker.io/salamflamo/express-js-sample:manifest-arm64 \
--amend docker.io/salamflamo/express-js-sample:manifest-amd64
```

- `docker push docker.io/salamflamo/express-js-sample:multi` #push to docker
4. Push your somerepo/somedir:tag to your container registry
5. Edit image repo in this deployment yaml example
6. Create namespace "sample"
7. Apply the yaml to kubernetes
