#!/bin/sh
export VBOX_VERSION_FULL="`vboxmanage --version`"
export VBOX_VERSION="`echo $VBOX_VERSION_FULL | cut -d \r -f 1`"
vagrant up --provision;
# reload to activate fully vbox additions
vagrant reload;
