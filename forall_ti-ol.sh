#!/bin/bash

export REPO_FORALL_ARG=$@

cd workspace/wlan
repo forall -p -v -c '$REPO_FORALL_ARG'
cd -

cd workspace/mydroid
repo forall -p -v -c 'if [ ${REPO_REMOTE} == "TI-OpenLink" ] ; then $REPO_FORALL_ARG ; fi'
repo forall -p -v -c 'if [ ${REPO_REMOTE} == "TI-OpenLink-secured" ] ; then $REPO_FORALL_ARG ; fi'
cd -

