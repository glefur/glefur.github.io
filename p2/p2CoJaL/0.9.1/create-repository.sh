#!/bin/bash

OSGITOOLS_REPO_PATH=/home/glefur/repositories/osgitools
ECLIPSE_PATH=/home/glefur/Perso/Softwares/eclipses/mars-osgi-jee
BUNDLES_TO_ECLIPSIFY=hibernate-core-4.2.7.Final.jar

mvn package
java -jar $OSGITOOLS_REPO_PATH/plugins/bundle-eclipsifier/target/bundle-eclipsifier.jar $PWD/target/plugins/ $BUNDLES_TO_ECLIPSIFY
$OSGITOOLS_REPO_PATH/scripts/repositify.sh -a $ECLIPSE_PATH $PWD/target/
rm -rf target/
