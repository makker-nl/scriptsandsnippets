#!/bin/bash
#############################################################################
# Cleanup caches and temp files of several applications.
# Initially VS Code
#
# @author Martien van den Akker, Oracle Consulting
# @version 1.0, 2025-04-17 - Initial creation
#
#############################################################################
SCRIPTPATH=$(dirname $0)
#
export VSCODE_CONFIG=~/.config/Code
export VSCODE_CACHE=$VSCODE_CONFIG/Cache
export VSCODE_CACHED_DATA=$VSCODE_CONFIG/CachedData
#
function cleanup_vscode () {
  echo "Cleanup VS Code caches in $VSCODE_CONFIG"
  rm -rf $VSCODE_CACHE/*
  rm -rf $VSCODE_CACHED_DATA/*
}
#
function main () {
    echo "Cleanup"
    cleanup_vscode
}
main "$@"
