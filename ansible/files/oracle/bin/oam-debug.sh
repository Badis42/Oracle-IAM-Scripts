#!/home/oracle/Oracle/Middleware/Oracle_IAM1/common/bin/wlst.sh
# Script to enable debug on OAM. Edit to suit your environment 
# From: http://fusionsecurity.blogspot.ca/2012/02/my-enable-debug-logging-in-oam-wlst.html


connect('weblogic', 'ABcd1234', 't3://localhost:7010')
domainRuntime()

#Admin server:                                                                                                                                                                   
setLogLevel(logger="oracle.oam.plugin",level="TRACE:32", target="AdminServer", persist="0")
setLogLevel(logger="oracle.oam.extensibility",level="TRACE:32", target="AdminServer", persist="0")
setLogLevel(logger="com.oracleateam.iam.oamauthnplugin",level="TRACE:32",  target="AdminServer", persist="0",addLogger="1")

# OAM server                                                                                                                                                                     
setLogLevel(logger="oracle.oam.plugin",level="TRACE:32", target="oam_server1", persist="0")
setLogLevel(logger="oracle.oam.extensibility",level="TRACE:32", target="oam_server1", persist="0")
setLogLevel(logger="com.oracleateam.iam.oamauthnplugin",level="TRACE:32",  target="oam_server1", persist="0",addLogger="1")

listLoggers(pattern="oracle.oam.*",target="AdminServer")
listLoggers(pattern="com.oracleateam.iam.oamauthnplugin",target="AdminServer")


listLoggers(pattern="oracle.oam.*",target="oam_server1")
listLoggers(pattern="com.oracleateam.iam.oamauthnplugin",target="oam_server1")
disableOAMLogging.py is exactly the same except that it has lines like:
setLogLevel(logger="oracle.oam",level="", persist="1", target="oam_server1")
