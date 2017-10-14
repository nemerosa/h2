#!/bin/bash

java \
   ${JAVA_OPTIONS} \
   -cp /var/lib/h2/h2.jar \
   org.h2.tools.Server \
   -web -webDaemon -webAllowOthers -webPort 8082 \
   -tcp -tcpAllowOthers -tcpPort 9082 \
   -baseDir /usr/lib/h2 \
   ${H2_OPTIONS}
