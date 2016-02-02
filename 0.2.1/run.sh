#!/usr/bin/env bash

#livenet db dir
if [ ! -d /var/lib/litesight/livenet ]; then
    mkdir -p /var/lib/litesight/livenet
fi

#testnet db dir
if [ ! -d /var/lib/litesight/testnet ]; then
    mkdir -p /var/lib/litesight/testnet
fi

#run litesight
if [ "$INSIGHT_NETWORK" = "testnet" ];
then
    export INSIGHT_DB=/var/lib/litesight/testnet
    npm start | tee -a testnet.log
else
    export INSIGHT_DB=/var/lib/litesight/livenet
    npm start | tee -a livenet.log
fi
