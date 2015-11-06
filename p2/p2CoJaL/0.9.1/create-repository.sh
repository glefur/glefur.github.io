#!/bin/bash

OSGITOOLS_REPO_PATH=/home/glefur/Perso/repositories/osgitools
ECLIPSE_PATH=/home/glefur/Perso/Softwares/eclipses/mars-osgi-jee

mvn integration-test
$OSGITOOLS_REPO_PATH/scripts/repositify.sh -a $ECLIPSE_PATH $PWD/target/
mvn clean
