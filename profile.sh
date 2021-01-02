#!/bin/bash
export SCRIPTPATH=/opt/seedbox-compose

if [ -f "${SCRIPTPATH}/ssddb" ]; then
    export BASEDIR="/opt/seedbox-compose"
    export CONFDIR="/opt/seedbox"
    cd /opt/seedbox-compose
    source ${SCRIPTPATH}/includes/functions.sh
    source ${SCRIPTPATH}/includes/variables.sh
    source ${SCRIPTPATH}/includes/functions.sh
fi