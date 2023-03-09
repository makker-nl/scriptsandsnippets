#!/bin/bash
#SCRIPTPATH=$(dirname $0)
echo Set OCI Env from .oci/config
#From: https://unix.stackexchange.com/questions/24140/return-only-the-portion-of-a-line-after-a-matching-pattern, grep/cut option
export U=$(cat ~/.oci/config|grep user|grep -o '=.*'|cut -f2- -d=)
export T=$(cat ~/.oci/config|grep tenancy|grep -o '=.*'|cut -f2- -d=)
