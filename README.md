This repo was created for debugging headers that incoming to the backend

1. Clone this repo
2. Run docker build first
`docker build -t somerepo/somedir:tag .`
3. Push your somerepo/somedir:tag to your container registry
4. Edit image repo in this deployment yaml example
5. Create namespace "sample"
6. Apply the yaml to kubernetes
