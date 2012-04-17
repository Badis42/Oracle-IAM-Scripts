#!/bin/bash


# need to determine whether we're on OEL5 or OEL6
. osver.sh

if [ "$OS_VER" == "5" ]; then
    echo The oracle-validated package takes care of all of this for you

elif [ $"$OS_VER" == "6" ]; then
    echo The oracle-rdbms-server-11gR2-preinstall package takes care of all of this for you
fi

