#!/bin/bash
# Common
alias his="history | grep "
alias kll="kill.sh"
# git aliases
alias ga="git add ."
alias gc="git commit -m $1"
alias gp="git push"
alias gpl="git pull"
alias gft="git fetch"
alias gs="git status"
# https://stackoverflow.com/questions/35978550/how-to-show-uncommitted-changes-in-git-and-some-git-diffs-in-detail
alias gdf="git diff"
alias gdfH="git diff HEAD"
alias gdfc="git diff --cached"
alias gclndev="git clone --single-branch --branch develop $1"
alias gcln="git clone $1"
alias gr="git reset --hard HEAD"
alias glsunc="git ls-files -v | grep '^[[:lower:]]'"
alias gls="git ls-files -v"
alias gl="git log"
##
# Taken from: https://gist.github.com/ecasilla/9669241
# Creates an alias called "git hist" that outputs a nicely formatted git log.
# Usage is just like "git log"
# Examples:
#   git hist
#   git hist -5
#   git hist <branch_name>
#   git hist <tag_name> -10
##
git config --global alias.hist "log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red){{%an}}%C(reset) %C(blue)%d%C(reset)' --graph --date=short"
# Set Git credential cache timeout to one hour
#alias gcredcache="git config credential.helper 'cache --timeout=3600'"
# Set Git credential cache timeout to four hour
alias gcredcache="git config credential.helper 'cache --timeout=14400'"
alias ghist="git hist"
alias gb="git branch"
alias gbd="git branch -d "
alias gchob="gchob.sh $1"
alias gsw="git switch" # alias for "git checkout"
# alias gsw="git checkout" # In older versions "git switch" may not exist
alias ggetdev="git fetch origin develop:develop" 
alias gmergedev="git merge develop --no-ff"
alias ggetmain="git fetch origin main:main" 
alias gmergemain="git merge main --no-ff"
alias gmv="git mv"
alias grm="git rm"
# docker compose
alias dc_up="docker-compose up" 
alias dc_upb="docker-compose up --build"
alias dc_dwn="docker-compose down"
alias dc_dwnro="docker-compose down --remove-orphans"
#docker
alias d_rm="dckr_rm.sh"
alias d_rmi="dckr_rmi.sh"
alias d_rmia="dckr_rmia.sh"
alias d_sh="dckr_sh.sh"
alias d_stp="dckr_stop.sh"
alias d_ps="docker ps"
alias d_psa="docker ps -a"
alias d_kl="docker kill"
alias d_prn="docker system prune -a"
alias d_im="docker images"
alias d_imi="docker image inspect"
# oc
alias ocg="oc get"
alias ocgn="oc get nodes"
alias ocgp="oc get pods"
alias ocgs="oc get services"
alias ocgr="oc get routes"
alias ocgpsts="oc get pods -o wide| awk '{print \$1 \" - \"  \$3}'"
alias ocdc="oc describe"
# mvn
alias mvncp="mvn clean package"
alias mvnci="mvn clean install"
alias mvnsbr="mvn spring-boot:run"
alias mvnsbrd="mvn spring-boot:run -Dspring-boot.run.profiles=dev"
# Kubernetes
alias k=kubectl
alias kns="kubectl -n \$NS"
alias knsg="kubectl -n \$NS get" 
alias knsed="kubectl -n \$NS edit" 
alias knsapl="kubectl -n \$NS apply" 
alias knsdsc="kubectl -n \$NS describe" 
alias knsdel="kubectl -n \$NS delete"
alias knsgwrk="kubectl -n \$NS get job,statefulset,daemonset,deployment,pod"
alias knsgstg="kubectl -n \$NS get sc,pvc,pv"
alias kc-h="kubectl config -h"
alias kc-curctx="kubectl config current-context"
alias kc-getctx="kubectl config get-contexts"
alias kc-usectx="kubectl config use-context"
