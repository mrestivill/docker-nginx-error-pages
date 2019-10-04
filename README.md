# docker-nginx-error-pages

## run
```
docker run --name error-pages -p 8080:80 -d glarfs/nginx-error-pages

curl -v localhost:8080/418.html
```