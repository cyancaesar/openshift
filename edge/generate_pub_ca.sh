#! /bin/bash

openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -out ca.pem
