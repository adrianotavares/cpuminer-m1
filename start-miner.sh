#!/bin/bash

DATA=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="miner_$DATA.log"

./cpuminer -c cpuminer-conf.json | tee -a "$LOGFILE"
echo "Mineração iniciada. Logs salvos em $LOGFILE"
