#!/bin/bash
SCRIPTPATH=$(dirname $0)
#
PULL=false
RESET=false
#
GIT_URL_MAKKER=git@github.com:makker-nl
WC_HOME=$GH_HOME
WC_MAKKER=$WC_HOME
#
#
check_params () {
  for i in $@
  do 
    if [[ "$i" == "pull" ]]; then
      echo "Set PULL = true"
      PULL=true
    elif [[ "$i" == "reset" ]]; then
      while true; do
        read -p "Do you wish to reset all the repos? " yn
        case $yn in
          [Yy]* ) echo "Set RESET = true"; RESET=true; break;;
          [Nn]* ) exit;;
          * ) echo "Please answer yes or no.";;
        esac
      done
    fi
  done
}
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
    echo "Repo $WC_REPO already exists!"
    if [[ "$RESET" == "true" ]]; then
      echo "Trying to reset it."
      git -C $WC_REPO reset --hard HEAD
    else
      echo "Skip reset."
    fi
    if [[ "$PULL" == "true" ]]; then
      echo "Trying to pull it."
      git -C $WC_REPO pull --rebase
    else
      echo "Skip pull."
    fi
  fi
}
#
#
# DevOps Project CCI
clone_makker () {
  clone $GIT_URL_MAKKER $WC_MAKKER "vagrant"
  clone $GIT_URL_MAKKER $WC_MAKKER "Kubernetes"
  clone $GIT_URL_MAKKER $WC_MAKKER "scriptsandsnippets"
  clone $GIT_URL_MAKKER $WC_MAKKER "FuseSoapAmqMicrocksDemo"
  clone $GIT_URL_MAKKER $WC_MAKKER "blog"
  clone $GIT_URL_MAKKER $WC_MAKKER "Dotacc"
  clone $GIT_URL_MAKKER $WC_MAKKER "FuseTools"
  clone $GIT_URL_MAKKER $WC_MAKKER "WindowsInstallScripts"
  clone $GIT_URL_MAKKER $WC_MAKKER "WeblogicScripts"  
}

main () {
  check_params "$@"
  # Makker
  clone_makker
}

main "$@"
