#!/bin/bash
mkdir -p $USER_HOME/Apps/jdks/openj9/adaptopenjdk
cd $USER_HOME/Apps/jdks/openj9/adaptopenjdk
curl -L -O https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.7%2B10_openj9-0.20.0/OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
tar -xzvf OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
rm OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
cd $USER_HOME
