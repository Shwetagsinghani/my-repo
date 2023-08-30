#echo -e "HOSTNAME,IP_BOND1,PORT,SERVICE_NAME,MEMORY,SERVICE_INSTANCE_ID,LOG_LEVEL,LOG_LOCATION,FILE_STATISTICS,SNMP_ALERT"
for SERVER in 10.2.135.33 10.2.135.34	10.2.135.35	10.2.135.36	10.2.135.37	10.2.135.38	10.2.135.39	10.2.135.40	10.2.135.41	10.2.135.42	10.2.135.43	10.2.135.44	10.2.135.45	10.2.135.46

do
		echo "started for $SERVER"
        sshpass -p 'crestel'  ssh -o StrictHostKeyChecking=no crestel@$SERVER 'bash -s' 2>&1 < /opt/crestelsetup/Script/AllNodeCommands/parsing_updation.sh
		echo "completed for $SERVER"
done
