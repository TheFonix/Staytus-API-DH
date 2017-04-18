#!/bin/bash
#==============27/3/2017===============#
#Created By Fonix: https://fonix.online#
#Status Script for the Digital Hazards #
#           status system              #
#======================================#

source "https://apt.fonix.online/spinner.sh" #Conection to Loader

			 #=========#
			 #Variables:
			 #=========#
SERVER='https://www.dynobot.net' #Server Address: (IP or HTTP)
OFF="Could no be contacted, but it was pinged" # Message if the server didnt respond
ON="Server was pinged and got a response" #Message if the server responded
TONULL="/dev/null 2>&1" # NUll var, to send info to a place other then the console
API="Staytus API" #Name of the Status API


	echo ""

	echo "Current Server to check is $SERVER"

	echo ""

	start_spinner 'Checking Site...'

		/usr/bin/curl -sSf $SERVER > "$TONULL"
			CS=$?

	echo ""
	stop_spinner $?

	echo "Connection Complete"


    	if [ $CS -ne 0 ]

    		then
    			start_spinner '$SERVER $OFF'
    			sleep 2
        		curl --header 'X-Auth-Token: 9beee57c-b389-4a6d-9926-3706339759a1' --header 'X-Auth-Secret: jWa2BtH40n7RzPV8MaXU1lH3PMQPwZ' -H "Content-Type: application/json" -d '{"service":"dscbt","status":"major-outage"}' -v http://status.digitalhazards.net/api/v1/services/set_status > /dev/null 2>&1
         		 stop_spinner $?
    		elif [ $CS -eq 0 ]
    		then
    			start_spinner '$SERVER $ON'
        		sleep 2
        		curl --header 'X-Auth-Token: 9beee57c-b389-4a6d-9926-3706339759a1' --header 'X-Auth-Secret: jWa2BtH40n7RzPV8MaXU1lH3PMQPwZ' -H "Content-Type: application/json" -d '{"service":"dscbt","status":"operational"}' -v http://status.digitalhazards.net/api/v1/services/set_status > /dev/null 2>&1
        		 stop_spinner $?
    	fi

    echo ""

	echo "Script Complete, Information from $SERVER was sent to the $API"

	echo ""
