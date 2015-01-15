#!/bin/sh
# Cleanup java installation before packaging

rm -rf /var/cache/oracle-jdk7-installer
rm -rf /usr/lib/jvm/java-7-oracle/src.zip
rm -rf /usr/lib/jvm/java-7-oracle/lib/visualvm
rm -rf /usr/lib/jvm/java-7-oracle/lib/missioncontrol
