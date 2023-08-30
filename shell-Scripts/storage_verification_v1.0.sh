H=`hostname`

A=`df -kh | tr -s ' ' | grep '/u01' | awk -F ' ' '{print$6" = "$5}'`
B=`df -kh | tr -s ' ' | grep '/u02' | awk -F ' ' '{print$6" = "$5}'`
C=`df -kh | tr -s ' ' | grep '/u03' | awk -F ' ' '{print$6" = "$5}'`
D=`df -kh | tr -s ' ' | grep '/PROCESSNATDATA$' | awk -F ' ' '{print$6" = "$5}'`
E=`df -kh | tr -s ' ' | grep '/PROCESSNATDATA6' | awk -F ' ' '{print$6" = "$5}'`
F=`df -kh | tr -s ' ' | grep '/PROCESSNATDATA7' | awk -F ' ' '{print$6" = "$5}'`
G=`df -kh | tr -s ' ' | grep '/var' | awk -F ' ' '{print$6" = "$5}'`
I=`df -kh | tr -s ' ' | grep '/opt' | awk -F ' ' '{print$6" = "$5}'`
echo "$H = $A"
echo "$H = $B"
echo "$H = $C"
echo "$H = $D"
echo "$H = $E"
echo "$H = $F"
echo "$H = $G"
echo "$H = $I"
