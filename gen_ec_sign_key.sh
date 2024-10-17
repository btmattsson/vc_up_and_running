#!/usr/bin/env bash

if [ -f private_ec256.pem ]; then
    exit 0
fi

# generate a private key for a curve
openssl ecparam -name prime256v1 -genkey -noout -out private_ec256.pem

# generate corresponding public key
openssl ec -in private_ec256.pem -pubout -out public_ec256.pem