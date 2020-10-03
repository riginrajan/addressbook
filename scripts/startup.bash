#!/bin/bash
/opt/apache-tomcat-7.0.106/bin/shutdown.sh
sleep 5
/opt/apache-tomcat-7.0.106/bin/startup.sh
sleep 5
cd /opt/apache-tomcat-7.0.106/webapps
rm -rf addressbook-2.0*
sleep 2
wget http://18.218.228.192:8081/nexus/content/repositories/maven-releases/com/vaadin/tutorial/addressbook/2.0/addressbook-2.0.war
