# InfluxDB application for monitoring of the Data Centre Fabric

To create an image use:
```
The official Docker container from InfluxData for InfluxDB is used.
```

To get the configuration of InfluxDB:
```
sudo docker run --rm influxdb influxd config > influxdb.conf
```

To run the InfluxDB to monitor the Data Center Fabric as Docekr container use:
```
sudo docker run -d -p 8086:8086 -p 8088:8088 \
      -v $PWD/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
      -v $PWD/data:/var/lib/influxdb \
      --name mon_influxdb \
      influxdb -config /etc/influxdb/influxdb.conf
```
