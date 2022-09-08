#!/bin/bash
SCRIPTPATH=$(dirname $0)
#
WC_HOME=/home/redhat/git
GIT_URL_CCIFUSE=git@ssh.dev.azure.com:v3/devops/PROJECT
GIT_URL_HIP=git@ssh.dev.azure.com:v3/devops/HIP
WC_HIP=$WC_HOME/HIP

#
clone () {
  GIT_URL=$1
  WC_LOC=$2
  REPO=$3
  WC_REPO=$WC_LOC/$REPO
  GIT_REPO=$GIT_URL/$REPO
  echo Check working copy $WC_REPO
  if [[ ! -d "$WC_REPO" ]]
  then
    echo "Clone repo $GIT_REPO into $WC_REPO"
    git clone  $GIT_REPO $WC_REPO
  else
    echo "Clone repo $WC_REPO already exists!"
  fi
}
#

clone_hip () {
  clone $GIT_URL_HIP $WC_HIP "hip-config-dev"
  clone $GIT_URL_HIP $WC_HIP "hip-config-scripts"
}


main () {
  clone_hip
}
main "$@"
