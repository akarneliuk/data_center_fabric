# Telegraf application for monitoring of the Data Centre Fabric

To create an image use:
```
The official Docker container from InfluxData for Telegraf is used.
```

To get the configuration of Telegraf:
```
sudo docker container run --rm kapacitor kapacitord config > kapacitor.conf
```


To run the Telegraf to monitor the Data Center Fabric as Docekr container use:
```
sudo docker run -d -p 9092:9092 \
      -v $PWD/data/scripts:/home/kapacitor/scripts \
      -v $PWD/data/var_lib_kapacitor:/var/lib/kapacitor \
      -v $PWD/data/exec:/tmp/exec \
      -v $PWD/kapacitor.conf:/etc/kapacitor/kapacitor.conf:ro \
      --network mon_net \
      --add-host "sand9.karneliuk.com:172.17.0.1" \
      --name dcf_kapacitor \
      kapacitor -config /etc/kapacitor/kapacitor.conf
```

To create self-signed SSL sertificate: 
```
sudo docker exec -it dcf_kapacitor openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/influxdb-selfsigned.key -out /etc/ssl/influxdb-selfsigned.crt -days 365 -subj "/C=DE/ST=NRW/L=DUS/O=karneliuk.com/CN=kapacitor.karneliuk.com"
```

To establish the keyless SSH connection between the Kapacitor contaienr and the management host:
```
sudo docker container exec -it dcf_kapacitor apt-get install -yqq ssh
sudo docker container exec -it dcf_kapacitor ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
sudo docker container exec -it dcf_kapacitor cat /root/.ssh/id_rsa.pub >> /home/aaa/.ssh/authorized_keys
chmod 600 /home/aaa/.ssh/authorized_keys
```

And to allow communcation between Kapacitor and InfluxDB on IPv6:
```
sudo ip6tables -I FORWARD 1 -p tcp --dport 8086 -j ACCEPT
```

Creating and verifying tasks:
1. To add the task to the lists: `sudo docker container exec -it dcf_kapacitor kapacitor -url https://localhost:9092 -skipVerify define dhcp_syslog_registration -tick /home/kapacitor/scripts/dhcp_syslog_registration.tick`.
2. To check the content of the tasks in the list:`curl -X GET https://localhost:9092/kapacitor/v1/tasks --insecure`.
3. To enable task to be executed:`sudo docker container exec -it dcf_kapacitor kapacitor -url https://localhost:9092 -skipVerify enable dhcp_syslog_registration`.
4. To show the details about the enabled task:`sudo docker container exec -it dcf_kapacitor kapacitor -url https://localhost:9092 -skipVerify show dhcp_syslog_registration`.
