#! /bin/bash
toggle="sudo ifconfig enp4s0"
if sudo ethtool enp4s0 | grep "no" -wn;
then
$toggle up;
echo LAN UP;

elif sudo ethtool enp4s0 | grep "yes" -wn;
then
$toggle down;
echo LAN DOWN;
fi
