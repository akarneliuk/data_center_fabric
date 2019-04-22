# HTTP Server for the Data Centre Fabric

To generate the Docker image:
```
sudo docker image build -t akarneliuk\dcf_http .
```

To use:
```
sudo docker container run -d -p 80:80 \
    -v $PWD/data/nginx.conf:/etc/nginx/nginx.conf:ro \
    -v $PWD/data/default.conf:/etc/nginx/conf.d/default.conf:ro \
    -v $PWD/data/website:/var/www/html/website \
    --name dcf_http akarneliuk/dcf_http
```
