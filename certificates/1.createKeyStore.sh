#!/bin/bash
#
###################################################################################################
# 1.createKeyStore.sh
# Create a pkcs12 KeyStore with new keypair
#
# author: Martien van den Akker
# (C) november 2021
# VirtualSciences | Conclusion
###################################################################################################
SCRIPTPATH=$(dirname $0)
#
. $SCRIPTPATH/keystore_env.sh
echo Create keystore $KEY_STORE with key alias $KEY_ALIAS, for DName: $DNAME
keytool -genkeypair -keyalg RSA -alias $KEY_ALIAS  -keypass $KEY_PASS -keystore $KEY_STORE -storepass $KEY_PASS -dname "${DNAME}" -validity $VALIDITY -keysize $KEYSIZE -deststoretype pkcs12 -ext SAN=$SAN
