# DNS Server for the Data Centre Fabric

To create an image use:
```
sudo docker image build -t akarneliuk\dcf_dns .
```

To run the DNS server for the Data Center Fabric as Docekr container use:
```
sudo docker container run -d -p {{ NATTED_IP }}:53:53 -p {{ NATTED_IP }}:53:53/udp \
    -v $PWD/files/named.conf:/etc/bind/named.conf:ro \
    -v $PWD/files/zones:/var/bind/zones \ 
    akarneliuk/dcf_dns
```
