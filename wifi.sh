#! /bin/bash

wi="nmcli radio wifi"

if wifi | grep "off" -wn;
then
$wi on
else
$wi off
fi
