#!/bin/bash
if [ -z "$DOMAINS" ]
then
	echo "Number of Domains was not set."
else
        if [[ $DOMAINS != [0-9]* ]]
        then
		echo "Domains is not an integer."
		exit 40 #made up exit code values here and below
	else
		echo "Number of Domains is set to $DOMAINS"
	fi
fi

for ((COUNTER=1; COUNTER<=DOMAINS; COUNTER++))
do
	if [[ -z $(eval echo \$$(echo "USER$COUNTER")) ]]
	then
		echo "No user was set for "USER$COUNTER"."
		exit 41 
	else
		eval echo USER$COUNTER has been set
	fi
done

for ((COUNTER=1; COUNTER<=DOMAINS; COUNTER++))
do 
	if [[ -z $(eval echo \$$(echo "PASSWORD$COUNTER")) ]]
	then
		echo "No password was set for "PASSWORD$COUNTER"."
		exit 42 
	else
		eval echo PASSWORD$COUNTER has been set
	fi
done

for ((COUNTER=1; COUNTER<=DOMAINS; COUNTER++))
do
	if [[ -z $(eval echo \$$(echo "HOSTNAME$COUNTER")) ]]
	then
		echo "No hostname was set for "HOSTNAME$COUNTER"."
		exit 43 
	else 
		eval echo \$$(echo "HOSTNAME$COUNTER") set as HOSTNAME$COUNTER
	fi
done

if [ -z "$USER" ] && [ -z "$USER1" ]
then
	echo "No user was set. Use -u=username"
	exit 10
fi

if [ -z "$PASSWORD" ] && [ -z "$PASSWORD1" ]
then
	echo "No password was set. Use -p=password"
	exit 20
fi


if [ -z "$HOSTNAME" ] && [ -z "$HOSTNAME1" ]
then
	echo "No host name. Use -h=host.example.com"
	exit 30
fi


if [ -n "$DETECTIP" ]
then
	IP=$(wget -qO- "http://myexternalip.com/raw")
fi


if [ -n "$DETECTIP" ] && [ -z $IP ]
then
	RESULT="Could not detect external IP."
fi


if [[ $INTERVAL != [0-9]* ]]
then
	echo "Interval is not an integer."
	exit 35
fi


SERVICEURL="dynupdate.no-ip.com/nic/update"

case "$SERVICE" in
        noip)
            SERVICEURL="dynupdate.no-ip.com/nic/update"
            ;;

        dyndns)
            SERVICEURL="members.dyndns.org/v3/update"
            ;;

        duckdns)
            SERVICEURL="www.duckdns.org/v3/update"
            ;;

				google)
            SERVICEURL="domains.google.com/nic/update"
            ;;


        *)
			SERVICEURL="dynupdate.no-ip.com/nic/update"

esac

if [ -z "$DOMAINS" ]
then
    echo "Doing standard operations"
	USERAGENT="--user-agent=\"no-ip shell script/1.0 mail@mail.com\""
	BASE64AUTH=$(echo '"$USER:$PASSWORD"' | base64)
	AUTHHEADER="--header=\"Authorization: $BASE64AUTH\""
	NOIPURL="https://$USER:$PASSWORD@$SERVICEURL"


	if [ -n "$IP" ] || [ -n "$HOSTNAME" ]
	then
		NOIPURL="$NOIPURL?"
	fi

	if [ -n "$HOSTNAME" ]
	then
		NOIPURL="${NOIPURL}hostname=${HOSTNAME}"
	fi

	if [ -n "$IP" ]
	then
		if [ -n "$HOSTNAME" ]
		then
			NOIPURL="$NOIPURL&"
		fi
		NOIPURL="${NOIPURL}myip=$IP"
	fi


	echo "$AUTHHEADER $USERAGENT $NOIPURL"

	while :
	do

		RESULT=$(wget --no-check-certificate -qO- $AUTHHEADER $USERAGENT $NOIPURL)


		echo $RESULT


		if [ $INTERVAL -eq 0 ]
		then
			break
		else
			sleep "${INTERVAL}m"
			if [ -n $IP ]; then
				IP=$(wget -qO- "http://myexternalip.com/raw")
			fi
		fi

	done

else
	while :
	do
		for ((COUNTER=1; COUNTER<=DOMAINS; COUNTER++))
		do
			if [[ -z $(eval echo \$$(echo "USER$COUNTER")) && -z $(eval echo \$$(echo "PASSWORD$COUNTER")) ]]
			then
				echo "An error occured for "USER$COUNTER" or "PASSWORD$COUNTER"."
				exit 44
			else
				#eval echo NOIPURL$COUNTER=https\://\$$(echo "USER$COUNTER\:\$$(echo PASSWORD$COUNTER)@$SERVICEURL")'\?'hostname=\$$(echo "HOSTNAME$COUNTER")'\&'myip=\$$(echo "IP") #show the variables getting set
				eval NOIPURL$COUNTER=https\://\$$(echo "USER$COUNTER\:\$$(echo PASSWORD$COUNTER)@$SERVICEURL")'\?'hostname=\$$(echo "HOSTNAME$COUNTER")'\&'myip=\$$(echo "IP") #set NOIPURLs
				#eval echo RESULT$COUNTER='\$\('wget --no-check-certificate -qO- \$$(echo "NOIPURL$COUNTER")'\)' #removed to prevent passing plain text passwords to log
				eval wget --no-check-certificate -qO- \$$(echo "NOIPURL$COUNTER"); echo " "; eval echo is the status for \$$(echo "HOSTNAME$COUNTER") # The additional echo commands provide visual indicator log witout passwords
				#eval echo is the status of \$$(echo "HOSTNAME$COUNTER")
			fi
		done
		if [ $INTERVAL -eq 0 ]
		then
			break
		else
			sleep "${INTERVAL}m"
			if [ -n $IP ]; then
				IP=$(wget -qO- "http://myexternalip.com/raw")
			fi
		fi
	done
fi
exit 0
