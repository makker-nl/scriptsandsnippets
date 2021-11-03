#!/bin/bash
#
###################################################################################################
# 3.importPubKeyInTrustStore.sh
# Import the exported public key certificate in the truststore
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Import key alias: $KEY_ALIAS into truststore
keytool -importcert -v -trustcacerts -keystore $TRUST_STORE -storepass $TRUST_PASS -file $KEY_ALIAS.cer -alias $KEY_ALIAS -deststoretype pkcs12 -noprompt 
