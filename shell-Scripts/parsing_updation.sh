H=`hostname`
A=`grep -E 'equal-check-field' /opt/crestelsetup/MOUNT_POINT_PARSING/PARSING_0*-7.14.0/config/810*/services/parsingservice/0*/parsing-service.xml`
B=`grep -E 'equal-check-function' /opt/crestelsetup/MOUNT_POINT_PARSING/PARSING_0*-7.14.0/config/810*/services/parsingservice/0*/parsing-service.xml`
C=`grep -E 'equal-check-value' /opt/crestelsetup/MOUNT_POINT_PARSING/PARSING_0*-7.14.0/config/810*/services/parsingservice/0*/parsing-service.xml`
echo "$H:$A"
echo "$H:$B"
echo "$H:$C"
