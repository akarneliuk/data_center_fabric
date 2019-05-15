# Telegraf application for monitoring of the Data Centre Fabric

To create an image use:
```
The official Docker container from InfluxData for Telegraf is used.
```

To get the configuration of Telegraf:
```
sudo docker run --rm telegraf telegraf config > telegraf.conf
```


To run the Telegraf to monitor the Data Center Fabric as Docekr container use:
```
sudo docker run -d -p 8125:8125 -p 8092:8092 -p 8094:8094 \
      -v $PWD/data:/usr/share/snmp/mibs \
      -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
      --dns 172.20.0.4 \
      --network mon_net \
      --name mon_telegraf \
      telegraf -config /etc/telegraf/telegraf.conf
```

# Note

The ip6tables in CentOS must be configured to allow SNMP over IPv6:
```
sudo ip6tables -I FORWARD 1 -p udp --dport 161 -j ACCEPT
sudo ip6tables -I FORWARD 1 -p udp --sport 161 -j ACCEPT
```

And to allow communcation between Telegraf and InfluxDB:
```
sudo ip6tables -I FORWARD 1 -p tcp --dport 8086 -j ACCEPT
```
