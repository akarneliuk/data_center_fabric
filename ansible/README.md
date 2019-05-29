# Automated Data Center Fabric

This part is dedicated for automated deployment of:
1) Integration with NetBox as data source.
2) Underlaying IP Fabric (IPv4/IPv6 UNICAST, L2VPN EVPN).
3) Overlay services (EVPN (L2/L3)).
4) Enabler infrastructure: DHCP, DNS, HTTP and FTP services.
5) Monitoring and closed-loop automation infrastructure: InfluxData (Telegraf, InfluxDB, Kapacitor) and Grafana.

## How to use Data Center Fabric automation

- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts` to perform all configuration tasks.
- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=configure_underlay` to configure underlaying infrastructure of the Data Centre Fabric.
- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=docker_install` to install Docker on your working station.
- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=docker_ops` to run Docker once it's installed on your working station.
- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=infra_enabler_install` to install as Docker containers and configure the following service: DHCP, DNS, FTP, HTTP, Telegraf for syslog, Telegraf for SNMP, InfluxDB, Kapacitor and Grafana.
- Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=infra_enabler_ops` to run DHCP, DNS, FTP, HTTP, Telegraf for syslog, Telegraf for SNMP, InfluxDB, Kapacitor and Grafana services once they are installed.


## Integration with the Kapacitor for full automatic provisioning
Kapacitor uses the `dc_underlay` role with a defined `look_for_this_ip` tag, which is triggered by Kapacitor by the time the device is getting IP from the DHCP server. The role is executed as `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts --tags=configure_underlay --extra-vars "look_for_this_ip=$IP"`

## Current limitation
Currently supported Cumulus Linux, Arista EOS, Nokia SR OS and Cisco IOS XR.
