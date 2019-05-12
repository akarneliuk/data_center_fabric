# Grafana application for monitoring of the Data Centre Fabric

To create an image use:
```
The official Docker container with Grafana is used.
```

To get configuration file of Grafana:
```
sudo docker container exec -it mon_grafana cat /etc/grafana/grafana.ini > grafana.ini
```

To run the Grafana to monitor the Data Center Fabric as Docekr container use:
```
sudo docker run -d -p 3000:3000 \
    --user root \
    -v $PWD/data:/var/lib/grafana \
    -v $PWD/grafana.ini:/etc/grafana/grafana.ini:ro \
    -v $PWD/provisioning:/etc/grafana/provisioning \
    --network mon_net \
    --name mon_grafana \
    grafana/grafana
```

To generate self-signed SSL certificate:
```
sudo docker exec -it mon_grafana openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/grafana-selfsigned.key -out /etc/ssl/grafana-selfsigned.crt -days 365 -subj "/C=DE/ST=NRW/L=DUS/O=karneliuk.com/CN=grafana.karneliuk.com"
```
