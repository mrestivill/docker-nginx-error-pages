# docker-nginx-error-pages
Nginx docker image containing error-pages.

This repo uses this other project files
https://github.com/denysvitali/nginx-error-pages

Thanks  @denysvitali 


## build

Single architecture:
```
docker build -t glarfs/nginx-error-pages .
```
Multiple architectures:
```
docker buildx build -t glarfs/nginx-error-pages --platform=linux/arm,linux/arm64,linux/amd64 . --push
```

## run
```
docker run --name error-pages -p 8080:80 -d glarfs/nginx-error-pages

curl -v localhost:8080/418.html
```

## usage

I use it with traefik middleware filter Errorpages

https://docs.traefik.io/middlewares/errorpages/