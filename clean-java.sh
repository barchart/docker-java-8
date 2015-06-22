#!/bin/sh
# Cleanup java installation before packaging

rm -rf /var/cache/oracle-jdk8-installer
rm -rf /usr/lib/jvm/java-8-oracle/src.zip
rm -rf /usr/lib/jvm/java-8-oracle/lib/visualvm
rm -rf /usr/lib/jvm/java-8-oracle/lib/missioncontrol
