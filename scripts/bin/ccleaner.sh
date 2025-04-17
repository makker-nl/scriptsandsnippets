#!/bin/bash
#############################################################################
# Cleanup caches and temp files of several applications.
# For VS Code, see: https://bobbyhadz.com/blog/vscode-clear-cache
#                   https://builtin.com/articles/vs-code-clear-cache
#
# @author Martien van den Akker, Oracle Consulting
# @version 1.0, 2025-04-17 - Initial creation
#
#############################################################################
SCRIPTPATH=$(dirname $0)
#
export VSCODE_CONFIG="$HOME/.config/Code"
export VSCODE_CACHE="$VSCODE_CONFIG/Cache"
export VSCODE_CODE_CACHE="$VSCODE_CONFIG/Code Cache"
export VSCODE_CACHED_DATA="$VSCODE_CONFIG/CachedData"
export VSCODE_LOCAL_STG="$VSCODE_CONFIG/Local Storage"
export VSCODE_SESSION_STG="$VSCODE_CONFIG/Session Storage"
export VSCODE_CACHED_PRFL_DATA="$VSCODE_CONFIG/CachedProfilesData/"
export VSCODE_USER="$VSCODE_CONFIG/User"
export VSCODE_USER_GLOB_STG="$VSCODE_USER/globalStorage"
export VSCODE_USER_HISTORY="$VSCODE_USER/History"
export VSCODE_USER_WORKSPACE_STG="$VSCODE_USER/workspaceStorage"


#
function cleanup_vscode () {
  echo "Cleanup VS Code caches in $VSCODE_CONFIG"
  rm -rf "$VSCODE_CACHE"/*
  du -h "$VSCODE_CACHE"
  rm -rf "$VSCODE_CACHED_DATA"/*
  du -h "$VSCODE_CACHED_DATA"
  rm -rf "$VSCODE_CODE_CACHE"/*
  du -h "$VSCODE_CODE_CACHE"
  rm -rf "$VSCODE_LOCAL_STG"/*
  du -h "$VSCODE_LOCAL_STG"
  rm -rf "$VSCODE_SESSION_STG"/*
  du -h "$VSCODE_SESSION_STG"
  rm -rf "$VSCODE_CACHED_PRFL_DATA"/*
  du -h "$VSCODE_SESSION_STG"
  rm -rf "$VSCODE_USER_GLOB_STG"/*
  du -h "$VSCODE_USER_GLOB_STG"
  rm -rf "$VSCODE_USER_HISTORY"/* 
  du -h "$VSCODE_USER_HISTORY"
  rm -rf "$VSCODE_USER_WORKSPACE_STG"/*
  du -h "$VSCODE_USER_WORKSPACE_STG"
}
#
function main () {
    echo "Cleanup"
    cleanup_vscode
}
main "$@"
