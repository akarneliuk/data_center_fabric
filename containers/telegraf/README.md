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
      --add-host="XR1:fc00::192:168:141:51" \
      --add-host="EOS1:fc00::192:168:141:71" \
      --add-host="EOS2:fc00::192:168:141:72" \
      --add-host="SR1:fc00::192:168:1:a1" \
      --add-host="VX4:fc00::192:168:141:84" \
      --name mon_telegraf
      telegraf -config /etc/telegraf/telegraf.conf

```

