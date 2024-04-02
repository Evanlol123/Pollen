#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen!                           #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                 #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                 #"
echo "# - Scaratek                                   #"
echo "# - r58Playz                                   #"
echo "# - Honkychunkymonkey - Additional Changes     #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

echo "Please copy and paste your JSON content below:"
read -r json_content

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed

echo "$json_content" > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json

cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"
