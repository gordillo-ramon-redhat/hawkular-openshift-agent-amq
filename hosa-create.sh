#!/bin/bash

# Instanciate HOSA template. Pod need cluster role for service account, but it is created
#   on the same template. Please, check the HOSA log for right permissions

oc create -f hosa-template.yml -n default
oc create -f hosa-configmap.yml -n default
oc process default//hawkular-openshift-agent -p IMAGE_VERSION=latest | oc create -n default -f - 
oc adm policy add-cluster-role-to-user hawkular-openshift-agent system:serviceaccount:default:hawkular-openshift-agent

