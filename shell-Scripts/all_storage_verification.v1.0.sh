
for SERVER in 10.2.135.34	10.2.135.35	10.2.135.36	10.2.135.37	10.2.135.38	10.2.135.39	10.2.135.40	10.2.135.41	10.2.135.42	10.2.135.43	10.2.135.44	10.2.135.45	10.2.135.46 10.2.134.129	10.2.134.130	10.2.134.132	10.2.134.133	10.2.134.135	10.2.134.136	10.2.134.137 10.2.135.1	10.2.135.2	10.2.135.3 10.2.134.7 10.2.134.9 10.2.134.21

do

sshpass -p 'crestel'  ssh -o StrictHostKeyChecking=no crestel@$SERVER 'bash -s' 2>&1 < /opt/crestelsetup/Script/AllNodeCommands/storage_verification_v1.0.sh

done