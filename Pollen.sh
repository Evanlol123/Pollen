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

# Prompt the user to copy and paste the JSON content
echo "Please copy and paste your JSON content below:"
read -r json_content

# Create the necessary directories
mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed

# Write the JSON content to the policy file
echo "$json_content" > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json

# Bind mount the overlay directory to /etc
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"
