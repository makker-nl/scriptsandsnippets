#!/bin/bash
#
###################################################################################################
# keystore_env
# Script to set variables to work with keystore/truststores.
#
# author: Martien van den Akker
# (C) september 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
BASEDIR=$SCRIPTPATH/..
CONFDIR=$BASEDIR/configuration
#
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.292.b10-1.el7_9.x86_64/jre
export KEY_STORE=$CONFDIR/keystore.ks
export KEY_PASS=Passw0rd
export KEY_ALIAS=vs-adapter-notification
export TRUST_STORE=$CONFDIR/truststore.ks
export TRUST_PASS=Passw0rd
export DNAME="CN=${KEY_ALIAS}, OU=RHFuse, O=VS, L=Nieuwegein, ST=UtrechtNL, C=NL, EmailAddress=info@vs.nl"
export SAN=dns:${KEY_ALIAS},dns:${KEY_ALIAS}.vs.local
export BRKR_KEY_STORE=$CONFDIR/broker_keystore.ks
export BRKR_KEY_PASS=Passw0rd
export BRKR_KEY_ALIAS=amqp-broker-producer
export BRKR_DNAME="CN=${BRKR_KEY_ALIAS}, OU=RHFuse, O=VS, L=Nieuwegein, ST=UtrechtNL, C=NL, EmailAddress=info@vs.nl"
export BRKR_SAN=dns:${BRKR_KEY_ALIAS},dns:${BRKR_KEY_ALIAS}.vs.local
export VALIDITY=365
export KEYSIZE=2048
