# Automated Data Center Fabric

This part is dedicated for automated deployment of:
1) Integration with NetBox as data source.
2) Underlaying IP Fabric (IPv4/IPv6 UNICAST, L2VPN EVPN).
3) Overlay services (EVPN (L2/L3)).

# How to use Data Center Fabric automation

Run `ansible-playbook data_center_fabric.yml --inventory=inventory/hosts`.

# Current limitation

Only Cumulus Linux is currently supported.
