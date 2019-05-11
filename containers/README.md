# Examples how to run various services as Docker containers

Currently there are two big set of services:
- Infrastructure
- Monitoring

## Docker network

Monitoring services are communicating to each other, hence they are moved to user-defined Docker network. It's created as:
```
sudo docker network create --ipv6 --subnet fc00:1:de:ffff:f::/80 mon_net --gateway fc00:1:de:ffff:f::1
```
