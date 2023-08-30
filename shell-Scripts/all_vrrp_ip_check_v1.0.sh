for SERVER in 10.2.134.129      10.2.134.130    10.2.134.132    10.2.134.133    10.2.134.135    10.2.134.136    10.2.134.137    10.2.135.1      10.2.135.2      10.2.135.3

do
          #echo "started for $SERVER"
          sshpass -p 'sterlite@password' ssh root@$SERVER 'H=`hostname` ; A=`/usr/sbin/ip a | grep inet | grep 'bond0:'| tr -s " "` ; echo "$H,$A"'
          #sshpass -p 'crestel' ssh crestel@$SERVER '(crontab -l ; echo "30 0 * * * /bin/sh /opt/crestelsetup/Script/Application_Backup_Central_Nodes_v1.0.sh") | crontab -'
          #echo "completed for $SERVER"
done

