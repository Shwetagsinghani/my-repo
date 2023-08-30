H=`hostname`

A=`sh /opt/crestelsetup/Script/HA_Script/container_service_status.sh DISTRIBUTION_01_7.14.0 6103 | grep Running`
B=`sh /opt/crestelsetup/Script/HA_Script/container_service_status.sh DISTRIBUTION_02_7.14.0 6104 | grep Running`
C=`sh /opt/crestelsetup/Script/HA_Script/container_service_status.sh DISTRIBUTION_03_7.14.0 6105 | grep Running`
D=`sh /opt/crestelsetup/Script/HA_Script/container_service_status.sh DISTRIBUTION_04_7.14.0 6106 | grep Running`

echo "$H:$A"
echo "$H:$B"
echo "$H:$C"
echo "$H:$D"
