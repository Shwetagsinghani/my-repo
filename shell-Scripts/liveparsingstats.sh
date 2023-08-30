H=`hostname`
M=`date '+%-m'`
D=`date '+%-d'`

for CONTAINER_NAME in PARSING_01 PARSING_02 PARSING_03 PARSING_04
do
        for i in `find /applog/FILE_STATISTICS/PARSING/ -type f -path "*"$M"/"$D"/*"`
                do
                        A=`cat $i | grep $CONTAINER_NAME | grep 'INPUT_00' | grep 'VALID_FILES_0' | cut -d ',' -f1,2,7| tail -1`
                        if [ ! -z "$A" ];
                        then
                                echo "$H,$A"
                        fi;
                done
done
