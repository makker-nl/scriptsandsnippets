#!/bin/bash
#
###################################################################################################
# 6.importBrokerPubKeyInTrustStore.sh
# Import the exported broker public key certificate in the truststore
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Import key alias: $BRKR_KEY_ALIAS into truststore $TRUST_STORE
keytool -importcert -v -trustcacerts -keystore $TRUST_STORE -storepass $TRUST_PASS -file $BRKR_KEY_ALIAS.cer -alias $BRKR_KEY_ALIAS -deststoretype pkcs12 -noprompt 
