# DHCP Server for the Data Centre Fabric

To create an image use:
`sudo docker image build -t akarneliuk\dcf_dhcp .`

To run the DHCP server for the Data Center Fabric as Docekr container use:
`sudo docker container run -d -p {{ NATTED_IP }}:67:67 -p {{ NATTED_IP }}:67:67/udp -p {{ NATTED_IP }}:546:546/udp -p {{ NATTED_IP }}:547:547/udp -v $PWD/files/dhcpd.conf:/etc/dhcp/dhcpd.conf:ro akarneliuk/dcf_dhcp`

