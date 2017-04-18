#!/bin/bash
#==============27/3/2017===============#
#Created By Fonix: https://fonix.online#
#Status Script for the Digital Hazards #
#           status system              #
#======================================#

cd /home/scripts/cloudflare

./dh.sh > /dev/null 2>&1
./mini.sh > /dev/null 2>&1

cd /home/scripts/dh-1

./host.sh > /dev/null 2>&1

cd /home/scripts/dh-2

./host.sh > /dev/null 2>&1

cd /home/scripts/dh-3

./admin.sh > /dev/null 2>&1
./database.sh > /dev/null 2>&1
./download.sh > /dev/null 2>&1
./mail.sh > /dev/null 2>&1
./redirection.sh > /dev/null 2>&1
./solder.sh > /dev/null 2>&1
./webservers.sh > /dev/null 2>&1

cd /home/scripts/external

./discord.sh > /dev/null 2>&1
./status.sh > /dev/null 2>&1
