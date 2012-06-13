# this script is intended to be used by the other ones.
# don't run it directly!

# what user?
ORA_USER=fmwuser
ORA_PASS=ABcd1234

USER_HOME=/scratch/$ORA_USER

# where do you want the database
ORADB_LOCATION=$USER_HOME/database

# and the FMW location
FMW_LOCATION=$USER_HOME/middleware

VNC_PASS=ABcd1234

# Temporary workspace
# "small" files (like generated rsp files and the like) go in /tmp
# larger items (like unzipped installers) go in this directory
WORKSPACE=~/installbits


# These settings are related to stuff on my environment
INSTALLER_LOCATION=~cmjohnso/installers
VERSION_TO_INSTALL=ss3-refresh

DB_HOST=localhost
DB_PORT=1521
DB_SID=orcl

# this is for the RCU:
CONNECT_STRING=$DB_HOST:$DB_PORT:$DB_SID
SCHEMA_PREFIX=DEV

# WebLogic
WLSVERSION=10.3.6

# IAM bits
