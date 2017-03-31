# hawkular-openshift-agent-amq

Contains scripts for:
---------------------
Create master-proxy secret: master-config-secret.sh
Add HOSA to your cluster: hosa-create.sh
Add HOSA config map to an amq sample app: amq-hosa.sh

Contains resources for those scripts:
-------------------------------------
HOSA template (based on docker image, no s2i needed, and liveness changed to secured 8443 port): hosa-template.yml
HOSA configmap with master-proxy identity: hosa-configmap.yml
HOSA amq configmap: amq-hosa-configmap.yml
