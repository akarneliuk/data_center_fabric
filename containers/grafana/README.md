# Grafana application for monitoring of the Data Centre Fabric

To create an image use:
```
The official Docker container with Grafana is used.
```

To run the Grafana to monitor the Data Center Fabric as Docekr container use:
```
sudo docker run -d -p 3000:3000 \
    --user root \
    -v $PWD/data:/var/lib/grafana \
    grafana/grafana
```
