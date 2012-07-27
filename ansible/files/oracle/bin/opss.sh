. ~/bin/env.sh
export ORACLE_HOME=~/fmw/Oracle_IDM1
$MW_HOME/oracle_common/common/bin/wlst.sh  $ORACLE_HOME/common/tools/configureSecurityStore.py  -d $MW_HOME/user_projects/domains/IAM -m create -c IAM -p Oracle123
