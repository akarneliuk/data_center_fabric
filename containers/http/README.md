# HTTP Server for the Data Centre Fabric

To generate the Docker image:
`sudo docker image build -t akarneliuk\dcf_http .`

To use:
```
sudo docker container run -d -p 80:80 \
    -v $PWD/files/nginx.conf:/etc/nginx/nginx.conf:ro \
    -v $PWD/files/default.conf:/etc/nginx/conf.d/default.conf:ro \
    -v $PWD/files/website:/var/www/html/website \
    akarneliuk/dcf_http
```
