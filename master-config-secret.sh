#!/bin/bash

# This script should be executed with granted permission over default project
# From master node
# Assume OCP_CONFIG_FOLDER, root of master/node configuration

oc secrets new master-proxy ${OCP_CONFIG_FOLDER}/master/master.proxy-client.crt ${OCP_CONFIG_FOLDER}/master/master.proxy-client.key -n default

