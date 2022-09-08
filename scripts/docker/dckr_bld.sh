#!/bin/bash
SCRIPTPATH=$(dirname $0)
CONTAINER=vs-adapter-notification
BASEDIR=$SCRIPTPATH/..
docker build --tag $CONTAINER $BASEDIR
