#!/bin/bash
#==============27/3/2017===============#
#Created By Fonix: https://fonix.online#
#Status Script for the Digital Hazards #
#           status system              #
#======================================#

cd /home/scripts/cloudflare

./dh.sh
./mini.sh

cd /home/scripts/dh-1

./host.sh

cd /home/scripts/dh-2

./host.sh

cd /home/scripts/dh-3

./admin.sh
./database.sh
./download.sh
./mail.sh
./redirection.sh
./solder.sh
./webservers.sh

cd /home/scripts/external

./discord.sh
./status.sh
