#!/bin/bash
#
###################################################################################################
# 2.exportPubKey.sh
# Export the public key certificate to be imported in the truststore
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Export key alias: $KEY_ALIAS
keytool -exportcert -keystore $KEY_STORE -storepass $KEY_PASS -alias $KEY_ALIAS -keypass $KEY_PASS -file $KEY_ALIAS.cer
