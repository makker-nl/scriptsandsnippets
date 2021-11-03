#!/bin/bash
#
###################################################################################################
# 5.exportBrokerPubKey.sh
# Export the broker public key certificate to be imported in the truststore
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Export key alias: $BRKR_KEY_ALIAS from keystore $BRKR_KEY_STORE
keytool -exportcert -keystore $BRKR_KEY_STORE -storepass $BRKR_KEY_PASS -alias $BRKR_KEY_ALIAS -keypass $BRKR_KEY_PASS -file $BRKR_KEY_ALIAS.cer
