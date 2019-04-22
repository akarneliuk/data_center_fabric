# DHCP Server for the Data Centre Fabric

To create an image use:
```
sudo docker image build -t akarneliuk\dcf_dhcp .
```

To run the DHCP server for the Data Center Fabric as Docekr container use:
```
sudo docker container run -d --net host \
    -v $PWD/data/dhcpd.conf:/etc/dhcp/dhcpd.conf:ro \
    --name dcf_dhcp akarneliuk/dcf_dhcp
```
