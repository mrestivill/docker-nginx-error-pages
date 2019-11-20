[![Docker Pulls](https://img.shields.io/docker/pulls/glarfs/nginx-error-pages.svg)](https://hub.docker.com/r/glarfs/nginx-error-pages/)
[![license](https://img.shields.io/github/license/glarfs/docker-nginx-error-pages.svg)](https://github.com/glarfs/docker-nginx-error-pages/blob/master/LICENSE)
# docker-nginx-error-pages
Nginx docker image containing error-pages.

This repo uses this other project files
https://github.com/denysvitali/nginx-error-pages

Thanks  @denysvitali 


## run
```
docker run --name error-pages -p 8080:80 -d glarfs/nginx-error-pages

curl -v localhost:8080/418.html
```

## usage

I use it with traefik middleware filter Errorpages

https://docs.traefik.io/middlewares/errorpages/
