#!/bin/bash
yum -y install centos-release-openshift-origin
yum -y install origin-clients
oc apply --dry-run -f openshift.yaml > /dev/null 2>&1
if [ $? -eq 0 ]; then 
  echo 'Test passed'
  exit 0
else
  echo 'Fail to parse manifest' 
  exit 1
fi
