#!/bin/sh

# Author: Chris Johnson (christopher.johnson@oracle.com)

# Please Note that this was written for my own purposes. It may or may
# not work in your environment.

# When you install this scroll down and edit the environment variables
# below to match up with your environment.

# NOTE NOTE NOTE:
# this script is incomplete. It doesn't have the setuid code necessary
# for it to be run from /etc/init.d

ORACLE_INSTANCE=~/Oracle/Middleware/Oracle_WT1/instances/wtinstance1
export ORACLE_INSTANCE

COMPONENT_NAME=wtohs1

PATH=$PATH:$ORACLE_INSTANCE/bin


##### DO NOT EDIT BELOW HERE #####
##################################


if [ -f /lib/lsb/init-functions ]
then
        . /lib/lsb/init-functions
elif [ -f /etc/init.d/functions ]
then
        . /etc/init.d/functions
fi

usage()
{
   echo "Usage: $0 {start|stop|stopall|restart}"
   exit 2
}

start() 
{
    echo "Starting Oracle HTTP Server..."

    opmnctl start
    opmnctl startproc ias-component=$COMPONENT_NAME
    status
 }

stop()
{
    echo "Stopping Oracle HTTP Server..."

    opmnctl stopproc ias-component=$COMPONENT_NAME
    echo "sleeping 5 seconds to allow complete shutdown"
    sleep 5
    status
}

stopall()
{
    echo "Stopping all Oracle HTTP Servers..."

    opmnctl stopall
    echo "sleeping 5 seconds to allow complete shutdown"
    sleep 5
    status

}

status()
{
    opmnctl status
}

#### End of functions, beginning of main()

case "$1" in
 "")
     usage
     ;;

 "start")
     start
     ;;

 "stop")
     stop
     ;;

 "stopall")
     stopall
     ;;

 "restart")
     stop
     start
     ;;

 "status")
     status
     ;;
esac
