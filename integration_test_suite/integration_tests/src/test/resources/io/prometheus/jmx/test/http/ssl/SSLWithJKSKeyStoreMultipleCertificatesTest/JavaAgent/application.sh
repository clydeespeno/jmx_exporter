#!/bin/bash

java \
  -Xmx128M \
  -Djavax.net.ssl.keyStore=localhost.jks \
  -Djavax.net.ssl.keyStorePassword=changeit \
  -javaagent:jmx_prometheus_javaagent.jar=8888:exporter.yaml \
  -jar jmx_example_application.jar