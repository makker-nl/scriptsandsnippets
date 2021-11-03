#!/bin/bash
SCRIPTPATH=$(dirname $0)
curl -k -X POST https://localhost:8080 \
   -H "Content-Type: application/xml" \
   -H "Accept: application/xml" \
   -d "<Request><Login>my_login</Login><Password>my_password</Password></Request>"
