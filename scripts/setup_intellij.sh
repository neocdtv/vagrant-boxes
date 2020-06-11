#!/bin/bash
INTELLIJ_DIR=$USER_HOME/Apps/intellij
mkdir -p $INTELLIJ_DIR
cd $INTELLIJ_DIR
curl --progress-bar -L -O https://download-cf.jetbrains.com/idea/ideaIC-2020.1.2.tar.gz
tar -xzvf ideaIC-2020.1.2.tar.gz
rm ideaIC-2020.1.2.tar.gz
chmod -R a+rwx idea-IC-201.7846.76

echo '#!/usr/bin/env xdg-open' >> $USER_HOME/Desktop/Intellij.desktop
echo '[Desktop Entry]' >> $USER_HOME/Desktop/Intellij.desktop
echo 'Version=1.0' >> $USER_HOME/Desktop/Intellij.desktop
echo 'Type=Application' >> $USER_HOME/Desktop/Intellij.desktop
echo 'Terminal=false' >> $USER_HOME/Desktop/Intellij.desktop
echo "Icon=$INTELLIJ_DIR/idea-IC-201.7846.76/bin/idea.svg" >> $USER_HOME/Desktop/Intellij.desktop
echo "Icon[en_US]=$INTELLIJ_DIR/idea-IC-201.7846.76/bin/idea.svg" >> $USER_HOME/Desktop/Intellij.desktop
echo 'Name[en_US]=Intellij' >> $USER_HOME/Desktop/Intellij.desktop
echo "Exec=$INTELLIJ_DIR/idea-IC-201.7846.76/bin/idea.sh" >> $USER_HOME/Desktop/Intellij.desktop
echo 'Name=Intellij' >> $USER_HOME/Desktop/Intellij.desktop

chmod a+rwx $USER_HOME/Desktop/Intellij.desktop