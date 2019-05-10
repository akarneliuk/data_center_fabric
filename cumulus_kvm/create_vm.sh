#!/usr/bin/bash

sudo virt-install \
  --name=VX1 \
  --description "VX1 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX1.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2261,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:01:00,model=virtio \
  --network=bridge:br1112,mac=52:54:00:06:01:01,model=virtio \
  --network=bridge:br1211,mac=52:54:00:06:01:02,model=virtio \
  --network=bridge:br1115,mac=52:54:00:06:01:03,model=virtio \
  --network=bridge:br1116,mac=52:54:00:06:01:04,model=virtio


sudo virt-install \
  --name=VX2 \
  --description "VX2 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX2.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2262,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:02:00,model=virtio \
  --network=bridge:br1112,mac=52:54:00:06:02:01,model=virtio \
  --network=bridge:br1211,mac=52:54:00:06:02:02,model=virtio \
  --network=bridge:br1215,mac=52:54:00:06:02:03,model=virtio \
  --network=bridge:br1216,mac=52:54:00:06:02:04,model=virtio


sudo virt-install \
  --name=VX3 \
  --description "VX3 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX3.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2263,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:03:00,model=virtio \
  --network=bridge:br1314,mac=52:54:00:06:03:01,model=virtio \
  --network=bridge:br1412,mac=52:54:00:06:03:02,model=virtio \
  --network=bridge:br1315,mac=52:54:00:06:03:03,model=virtio \
  --network=bridge:br1316,mac=52:54:00:06:03:04,model=virtio


sudo virt-install \
  --name=VX4 \
  --description "VX4 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX4.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2264,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:04:00,model=virtio \
  --network=bridge:br1314,mac=52:54:00:06:04:01,model=virtio \
  --network=bridge:br1413,mac=52:54:00:06:04:02,model=virtio \
  --network=bridge:br1415,mac=52:54:00:06:04:03,model=virtio \
  --network=bridge:br1416,mac=52:54:00:06:04:04,model=virtio


sudo virt-install \
  --name=VX5 \
  --description "VX5 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX5.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2265,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:05:00,model=virtio \
  --network=bridge:br1115,mac=52:54:00:06:05:01,model=virtio \
  --network=bridge:br1215,mac=52:54:00:06:05:02,model=virtio \
  --network=bridge:br1315,mac=52:54:00:06:05:03,model=virtio \
  --network=bridge:br1415,mac=52:54:00:06:05:04,model=virtio


sudo virt-install \
  --name=VX6 \
  --description "VX6 VM" \
  --os-type=Linux \
  --ram=1024 \
  --vcpus=1 \
  --boot hd,cdrom,menu=on \
  --disk path=/var/lib/libvirt/images/VX6.qcow2,bus=ide,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:2266,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:06:06:00,model=virtio \
  --network=bridge:br1116,mac=52:54:00:06:06:01,model=virtio \
  --network=bridge:br1216,mac=52:54:00:06:06:02,model=virtio \
  --network=bridge:br1316,mac=52:54:00:06:06:03,model=virtio \
  --network=bridge:br1416,mac=52:54:00:06:06:04,model=virtio
