#!/bin/bash
SCRIPTPATH=$(dirname $0)
kubectl get secret argocd-initial-admin-secret  -n argocd -o jsonpath={.data.password}|base64 -d;echo
