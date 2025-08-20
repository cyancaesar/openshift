#! /bin/bash

openssl x509 -req -in tls.req -CA ca.pem -CAkey ca.key -CAcreateserial -out tls.crt -days 1650 -sha256
