#!/bin/bash
JDK_ZULU=$USER_HOME/Apps/jdks/hotspot/zulu
mkdir -p $JDK_ZULU
cd $JDK_ZULU
curl --progress-bar -L -O https://cdn.azul.com/zulu/bin/zulu11.39.15-ca-jdk11.0.7-linux_x64.tar.gz
tar -xzvf zulu11.39.15-ca-jdk11.0.7-linux_x64.tar.gz
rm zulu11.39.15-ca-jdk11.0.7-linux_x64.tar.gz
chmod -R a+rwx zulu11.39.15-ca-jdk11.0.7-linux_x64

echo "" >> $USER_HOME/.bashrc
echo 'export MAVEN_OPTS_HOTSPOT="-Xnoclassgc -Xms1g -Xmx2g -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -XX:+UseParallelGC -Xverify:none -Xshare:on"' >> $USER_HOME/.bashrc
echo "" >> $USER_HOME/.bashrc
echo "jdk_11_hotspot() {" >> $USER_HOME/.bashrc
echo "	export JAVA_HOME=$JDK_ZULU/zulu11.39.15-ca-jdk11.0.7-linux_x64"  >> $USER_HOME/.bashrc
echo '	export PATH="$JAVA_HOME/bin:$PATH"'  >> $USER_HOME/.bashrc
echo '	export MAVEN_OPTS="$MAVEN_OPTS_HOTSPOT"' >> $USER_HOME/.bashrc
echo '	if [ ! -f "$JDK_ZULU/zulu11.39.15-ca-jdk11.0.7-linux_x64/lib/server/classes.jsa" ]' >> $USER_HOME/.bashrc
echo "	    then" >> $USER_HOME/.bashrc
echo "		    java -Xshare:dump" >> $USER_HOME/.bashrc
echo "   fi" >> $USER_HOME/.bashrc
echo "}" >> $USER_HOME/.bashrc
echo "" >> $USER_HOME/.bashrc
# configure hotspot 11 as default jdk
echo "jdk_11_hotspot" >> $USER_HOME/.bashrc

cd $USER_HOME
