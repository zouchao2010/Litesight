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
    npm start | tee -a /var/lib/litesight/testnet.log
else
    npm start | tee -a /var/lib/litesight/livenet.log
fi
