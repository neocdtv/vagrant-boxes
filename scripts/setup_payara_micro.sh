#!/bin/bash
PAYARA_MICRO_DIR=$USER_HOME/Apps/payara-micro
mkdir -p $PAYARA_MICRO_DIR
cd $PAYARA_MICRO_DIR
curl --progress-bar -L -O https://repo1.maven.org/maven2/fish/payara/extras/payara-micro/5.201/payara-micro-5.201.jar
echo "" >> $USER_HOME/.bashrc
echo "export PAYARA_MICRO_HOME=$PAYARA_MICRO_DIR" >> $USER_HOME/.bashrc