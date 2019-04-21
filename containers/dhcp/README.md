# DHCP Server for the Data Centre Fabric

To create an image use:
`sudo docker image build -t akarneliuk\dcf_dhcp .`

To run the DHCP server for the Data Center Fabric as Docekr container use:
`sudo docker container run -d --net host -v $PWD/files/dhcpd.conf:/etc/dhcp/dhcpd.conf:ro akarneliuk/dcf_dhcp`

