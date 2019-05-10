#!/usr/bin/bash

echo 'CREATING BRIDGES...'

sudo modprobe 8021q

sudo brctl addbr br1112
sudo ifconfig br1112 up

sudo brctl addbr br1211
sudo ifconfig br1211 up

sudo brctl addbr br1115
sudo ifconfig br1115 up

sudo brctl addbr br1116
sudo ifconfig br1116 up

sudo brctl addbr br1215
sudo ifconfig br1215 up

sudo brctl addbr br1216
sudo ifconfig br1216 up

sudo brctl addbr br1314
sudo ifconfig br1314 up

sudo brctl addbr br1413
sudo ifconfig br1413 up

sudo brctl addbr br1315
sudo ifconfig br1315 up

sudo brctl addbr br1316
sudo ifconfig br1316 up

sudo brctl addbr br1415
sudo ifconfig br1415 up

sudo brctl addbr br1416
sudo ifconfig br1416 up

echo 'STARTING VMs...'

sudo virsh start VX1
sudo virsh start VX2
sudo virsh start VX3
sudo virsh start VX4
sudo virsh start VX5
sudo virsh start VX6
