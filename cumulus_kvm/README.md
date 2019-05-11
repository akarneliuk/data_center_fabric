# What is it?

As Cumulus VX consumes the least amount of memory/RAM of the Server, I'm primarily use it to develop the automation and then expanding to other vendors (Arista, Cisco, Nokia). That's why this scripts intent to build the Data Centre Fabric with all 6 network functions running Cumulus Linux.

# How to use

To build and launch the lab use `./create_vm.sh`.
To launch the built lab use `./launch_vm.sh`.

# Note

As the lab is relying on the ZTP functionality, it's supposed you start the infrastructure stack (DHCP, DNS, FTP, HTTP) beforehand.
