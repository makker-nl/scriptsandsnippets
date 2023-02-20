#!/bin/bash
SCRIPTPATH=$(dirname $0)
BRANCH=$1
echo Checkout Branch $BRANCH
git checkout -b $BRANCH
git branch --set-upstream-to=origin/$BRANCH $BRANCH
git pull
