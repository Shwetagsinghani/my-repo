echo "============================================="
echo -n "CURRENT OS DATE :"
date
echo "============================================="
echo -e "\n"

for SERVER in 10.2.135.34
do
		  echo "==================================="
          echo "started for DISTRIBUTION_LIVE_STATS"
		  echo "==================================="
          sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'sh /opt/crestelsetup/Script/AllNodeCommands/all_distribution_livestats_v1.0.sh'
		  echo "================================="
		  echo "Ended for DISTRIBUTION_LIVE_STATS"
		  echo "================================="
		  echo -e "\n"
		  echo "=============================="
		  echo "started for PARSING_LIVE_STATS"
		  echo "=============================="
		  sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'sh /opt/crestelsetup/Script/AllNodeCommands/all_parsing_livestats_v1.0.sh'
		  echo "============================"
		  echo "Ended for PARSING_LIVE_STATS"
		  echo "============================"
		  echo -e "\n"
		  
		  echo "==========================================="
		  echo "started for STORAGE_PARTITION_WHICH_IS_100%"
		  echo "==========================================="
		  sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'sh /opt/crestelsetup/Script/AllNodeCommands/all_storage_verification.v1.0.sh | grep "100"'
		  echo "==========================================="
		  echo "Ended for STORAGE_PARTITION_WHICH_IS_100%"
		  echo "==========================================="
		  echo -e "\n"
		  
		  
		  echo "================================================"
		  echo "Started for STORAGE_PARTITION_WHICH_IS_ABOVE_90%"
		  echo "================================================"
		  sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'sh /opt/crestelsetup/Script/AllNodeCommands/all_storage_verification.v1.0.sh | grep "= 9"'
		  echo "=============================================="
		  echo "Ended for STORAGE_PARTITION_WHICH_IS_ABOVE_90%"
		  echo "=============================================="
		  echo -e "\n"
done

for SERVER in 10.2.134.21
do
		  echo "==================================="
		  echo "started for IPLOGPARSING_LIVE_STATS"
		  echo "==================================="
          sshpass -p 'crestel' ssh  -o StrictHostKeyChecking=no crestel@$SERVER 'sh /opt/crestelsetup/Script/logs_all_central.sh'
		  echo "===================================="
		  echo -e "Ended for IPLOGPARSING_LIVE_STATS"
		  echo "===================================="
		  echo -e "\n"
done


