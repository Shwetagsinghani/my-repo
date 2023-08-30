#for SERVER in 10.2.134.1		10.2.134.2		10.2.134.4		10.2.134.19		10.2.134.129		10.2.134.130		10.2.134.132		10.2.134.133		10.2.134.135		10.2.134.136		10.2.134.137		10.2.135.1		10.2.135.2		10.2.135.3		10.2.135.4		10.2.135.5		10.2.135.6		10.2.135.7		10.2.135.8		10.2.135.9		10.2.135.10		10.2.135.11		10.2.135.12		10.2.135.13		10.2.135.14		10.2.135.15		10.2.135.16		10.2.135.17

for SERVER in 10.2.134.129      10.2.134.130    10.2.134.132    10.2.134.133    10.2.134.135    10.2.134.136    10.2.134.137    10.2.135.1      10.2.135.2      10.2.135.3

#for SERVER in 10.2.134.7 10.2.134.9 10.2.134.21 10.2.134.8 10.2.134.19 10.2.134.5
do
	  echo "started for $SERVER"
	  #sshpass -p 'sterlite@password' ssh root@$SERVER 'df -kh /NATDATA126'
	  sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'cat /opt/crestelsetup/MOUNT_POINT_7.14.0/COLLECTION_SERVICE-7.14.0/config/9102/services/natflowbinarycollectionservice/000/natflow-binary-collection-service.xml  | grep 10.206.152.7 
'
	  echo "completed for $SERVER"
	  #read a;
done
