# Data Center Fabric

This project is a sister of another my project `Service Provider Fabric`. At some time in future they will be merged into a single one, but as of today they are splitted. The primar focus of this project is to make sure the freshly shipped network function is automatically provisioned (zero-touch) up to desired state including infrastructure and customer services and is integrated into data center operation.

# Currently used network operation systems
1. Arist EOS 4.21.1.1F
2. Cisco IOS XR 6.5.1
3. Nokia SR OS 16.0.R5
4. Cumulus Linux 3.7.3

# Version

The current version of this repository is `0.3.2`.

# Prerequisites

You have installed Netbox (https://github.com/digitalocean/netbox) to document your infrastructure, as it's used as "the source of truth" and modelling for data center infrastructure and services. 

# Change log

Version `0.1`.
1. Initial release
2. Integration of Ansible with NetBox over REST API to retreive information needed to create configuration for Cumulus Linux.
3. Automatic provisioning of Cumulus VX using information extracted in previous point.

Version `0.1.1`.
1. Topology is added within `topology` folder.

Version `0.2`.
1. Automatic provisioning of Arista EOS for underlay IP Fabric.
2. Automatic provisioning of Cisco IOS XR for underlay IP Fabric.

Version `0.3`.
1. Added folder `containers` with Dockerfiles for infrastructure enablers.
2. Folder `containers\dns` contains the Dockerfile for DNS Server based on BIND9 and Alpine Linux base image.
3. Folder `contaienrs\ftp` contains the Dockerfile for FTP Server based on VSFTP and Alpine Linux base image.
4. Folder `contaienrs\http` contains the Dockerfile for HTTP Server based on NGINX and Alpine Linux base image.
5. Folder `contaienrs\dhcp` contains the Dockerfile for DHCP Server based on ISC DHCP and Alpine Linux base image.

Version `0.3.1`.
1. The role `cloud_docker` is copied from `The Service Provider Fabric` to setup the Docker on CentOS.
2. New role `cloud_enabler` is created to bring life DHCP, DNS, FTP and HTTP services automatically. More details in `ansible\README.md`.

Version `0.3.2`.
1. The DHCP config file `dhcpd.conf` is automatically populated with data from NetBox over REST API using Ansible. The information is populated for the data centre `bln`.
2. The DNS config file `named.cond` is automatically populated with data from NetBox over REST API using Ansible. The information is populated for the data centre `bln`.
3. The filename for forward and reverse IPv4 zone is automatically generated based on the domain given in Ansible variables `group_vars/linux` and OOB subnet extracted from NetBox.
4. The DNS forward zone is automatically filled with info from NetBox over REST API using Ansible.
5. The DNS reverse zone for IPv4 is automatically filled with info from NetBox over REST API using Ansible.
