#! /bin/bash

toggle="sudo ifconfig enp4s0";
eth="sudo ethtool enp4s0";
search="grep -wn"

if $eth | $search "no";
then
$toggle up;
echo LAN UP;

elif $eth | $search  "yes";
then
$toggle down;
echo LAN DOWN;
fi
