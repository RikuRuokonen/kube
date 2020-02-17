#!/bin/bash
./cleanup.sh

rke up

./tiller.sh
./certmgr.sh
./rancher.sh