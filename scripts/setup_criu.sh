#!/bin/bash
mkdir -p $USER_HOME/Projects
cd $USER_HOME/Projects        
apt install -y git
git clone --branch criu-dev --depth 1 --no-tags https://github.com/checkpoint-restore/criu.git 
cd criu
./scripts/install-debian-pkgs.sh 
make
cp ./criu/criu /usr/local/bin/
cp ./scripts/criu-ns /usr/local/bin/
