#!/bin/bash
#############################################################################
# Create a remote branch and clone it.
#
# @author Martien van den Akker, Oracle Consulting
# @version 1.0, 2024-11-05 - Initial creation
#
#############################################################################
SCRIPTPATH=$(dirname $0)
#
main () {
  local branch_name=$1
  local remote_name=${2:-origin}
  local local_branch_name=$branch_name
  local remote_branch_name=$branch_name
  echo "Check out/create local branch: $local_branch_name"
  git checkout -b $local_branch_name

  # git push <remote-name> <branch-name>
  echo "Push local branch $local_branch_name to remote $remote_name $remote_branch_name"
  git push $remote_name $local_branch_name>:$remote_branch_name

}
main "$@"
