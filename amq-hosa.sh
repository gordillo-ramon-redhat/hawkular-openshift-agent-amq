#!/bin/bash

# Add HOSA configmap to a amq demo application

oc create -f amq-hosa-configmap.yml -n amq-demo
oc patch dc/amq-demo-app-amq -n amq-demo --patch '
spec:
  template:
    spec:
      volumes:
        - name: hawkular-openshift-agent
          configMap:
            name: amq-hosa-configmap'

