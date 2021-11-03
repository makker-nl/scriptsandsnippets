#!/bin/bash
#
###################################################################################################
# 4.createBrokerKeyStore.sh
# Create a key store for the Broker based on settings in the keystore_env.sh
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Create keystore $BRKR_KEY_STORE with key alias $BRKR_KEY_ALIAS, for DName: $BRKR_DNAME
keytool -genkeypair -keyalg RSA -alias $BRKR_KEY_ALIAS  -keypass $BRKR_KEY_PASS -keystore $BRKR_KEY_STORE -storepass $BRKR_KEY_PASS -dname "${BRKR_DNAME}" -validity $VALIDITY -keysize $KEYSIZE -deststoretype pkcs12 -ext SAN=$BRKR_SAN
