for SERVER in 10.2.135.33 10.2.135.34   10.2.135.35     10.2.135.36     10.2.135.37     10.2.135.38     10.2.135.39     10.2.135.40     10.2.135.41        10.2.135.42     10.2.135.43     10.2.135.44     10.2.135.45     10.2.135.46

do
	sshpass -p 'crestel'  ssh -o StrictHostKeyChecking=no crestel@$SERVER 'bash -s' 2>&1 < /opt/crestelsetup/Script/AllNodeCommands/service_status.v1.0.sh

done
