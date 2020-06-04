#!/bin/bash
SCRIPT_NAME=$1
cd $USER_HOME/scripts
curl -O https://raw.githubusercontent.com/neocdtv/vagrant-boxes/master/scripts/$SCRIPT_NAME
chmod a+x $SCRIPT_NAME
