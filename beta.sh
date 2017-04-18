#Fonix Hardcastle API for Staytus

#Server Address: (IP or HTTP)
SERVER='https://digitalhazards.net/'
#Enable Debug Settings, This will output all the information to console

OFF="Offline but Pinged"
ON="Online and Working"
TONULL="/dev/null 2>&1"

/usr/bin/curl -sSf $SERVER > "$TONULL"
CS=$?

    if [ $CS -ne 0 ]
    then
    	echo "$SERVER is $OFF"
        curl --header 'X-Auth-Token: TOKEN' --header 'X-Auth-Secret: TOKEN' -H "Content-Type: application/json" -d '{"service":"dhio1","status":"major-outage"}' -v http://status.digitalhazards.net/api/v1/services/set_status > /dev/null 2>&1

    elif [ $CS -eq 0 ]
    then
        echo "$SERVER is $ON"
        curl --header 'X-Auth-Token: TOKEN' --header 'X-Auth-Secret: TOKEN' -H "Content-Type: application/json" -d '{"service":"dhio1","status":"operational"}' -v http://status.digitalhazards.net/api/v1/services/set_status > /dev/null 2>&1
    fi
