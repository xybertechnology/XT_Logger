#!/bin/bash

# Establishing Variables

ipaddr=$(ip addr show | grep "eth0" | grep "inet" | awk '/inet / {print $2}')
passwd_fail=$(cat /var/log/auth.log | grep 'password check failed')
ssh_passwd_fail=$(cat /var/log/auth.log | grep 'Failed password')
auth_fail=$(cat /var/log/auth.log | grep 'authentication failure')

# Introduction

echo ==========================
echo
echo "  XyberTechnology Logger  "
echo
echo ==========================
echo
echo "Hostname: $HOSTNAME"
echo "Primary IP Address : $ipaddr"
echo
echo "| FAILED PASSWD_CHECK LOGS |"
echo
echo "$passwd_fail"
echo "$ssh_passwd_fail"
echo
echo "| AUTH_FAILED LOGS |"
echo
echo "$auth_fail"

