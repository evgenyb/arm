#!/usr/bin/env bash
#
# Usage:
#
#  ./deploy.sh blue 
#  ./deploy.sh green

slot=$1
timestamp=`date "+%Y%m%d-%H%M%S"`

az deployment group create -g iac-aks-$slot-rg --template-file template.json --parameters parameters-$slot.json -n "aks-$slot-${timestamp}"