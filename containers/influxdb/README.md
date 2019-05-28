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
      --network mon_net \
      --name mon_influxdb \
      influxdb -config /etc/influxdb/influxdb.conf
```

To create self-signed SSL sertificate: `sudo docker exec -it mon_influxdb openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/influxdb-selfsigned.key -out /etc/ssl/influxdb-selfsigned.crt -days 365 -subj "/C=DE/ST=NRW/L=DUS/O=karneliuk.com/CN=influxdb.karneliuk.com"`.


# Basic management of the InfluxDB over REST API

1. Test the reachability of the InfluxDB service: `curl -i http://localhost:8086/ping`.
2. Create the database for metrics: `curl -X POST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE dcf_snmp"`.
3. Create the database for syslog: `curl -X POST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE dcf_syslog"`.
4. Create the user: `curl -X POST http://localhost:8086/query --data-urlencode "q=CREATE USER dcf_workforce WITH PASSWORD 'dcf_w0rkf0rc3' WITH ALL PRIVILEGES"`.
5. Check the database using authentication and HTTPS `curl -G 'https://localhost:8086/query?db=dcf_snmp&pretty=true&u=dcf_workforce&p=dcf_w0rkf0rc3' --data-urlencode "q=SELECT * FROM interfaceX" --insecure`
6. More sophisticated query `curl -X POST 'https://localhost:8086/query?pretty=true&u=dcf_workforce&p=dcf_w0rkf0rc3' --data-urlencode "q=SELECT message FROM dcf_syslog.autogen.syslog WHERE (msgid = 'dcf_dhcp' AND message =~ /^DHCPACK/)" --insecure`.
7. Review all the Subscriptions `curl -G 'https://localhost:8086/query?pretty=true&u=dcf_workforce&p=dcf_w0rkf0rc3' --data-urlencode "q=SHOW SUBSCRIPTIONS" --insecure`.
8. Delete the Kapacitor subscription ``.
