#!/bin/bash
USER_HOME=$1
mkdir -p $USER_HOME/Projects
cd $USER_HOME/Projects        
apt install -y git
git clone https://github.com/checkpoint-restore/criu.git 
cd criu
./scripts/install-debian-pkgs.sh 
make
cp ./criu/criu /usr/local/bin/
cp ./scripts/criu-ns /usr/local/bin/
cd $USER_HOME
