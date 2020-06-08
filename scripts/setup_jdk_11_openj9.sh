#!/bin/bash
JDK_ECLIPSE=$USER_HOME/Apps/jdks/openj9/adaptopenjdk
mkdir -p $JDK_ECLIPSE
cd $JDK_ECLIPSE
curl --progress-bar -L -O https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.7%2B10_openj9-0.20.0/OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
tar -xzvf OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
rm OpenJDK11U-jdk_x64_linux_openj9_11.0.7_10_openj9-0.20.0.tar.gz
chmod -R a+rwx jdk-11.0.7+10
echo "" >> $USER_HOME/.bashrc
echo 'export MAVEN_OPTS_OPENJ9=""' >> $USER_HOME/.bashrc
echo "" >> $USER_HOME/.bashrc
echo "jdk_11_openj9() {" >> $USER_HOME/.bashrc
echo "	export JAVA_HOME=$JDK_ECLIPSE/jdk-11.0.7+10"  >> $USER_HOME/.bashrc
echo '	export PATH="$JAVA_HOME/bin:$PATH"'  >> $USER_HOME/.bashrc
echo '	export MAVEN_OPTS="$MAVEN_OPTS_OPENJ9"' >> $USER_HOME/.bashrc
#echo "  	if [ ! -f '$JDK_ZULU/zulu11.39.15-ca-jdk11.0.7-linux_x64/lib/server/classes.jsa' ]" >> $USER_HOME/.bashrc
#echo "	    then" >> $USER_HOME/.bashrc
#echo "		    java -Xshare:dump" >> $USER_HOME/.bashrc
#echo "   fi" >> $USER_HOME/.bashrc
echo "}" >> $USER_HOME/.bashrc
echo "" >> $USER_HOME/.bashrc
