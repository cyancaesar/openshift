To work in this lab run the following scripts, in order, to generate a TLS certificate/key and CA certificate:

- `generate_priv_ca.sh`
- `generate_pub_ca.sh`
- `generate_tls_key.sh`
- `generate_tls_req.sh`
- `self_sign.sh`

Create a ConfigMap to store default nginx config: `oc create configmap enginx-conf --from-file enginx.conf`

Run the nginx deployment: `oc create -f enginx-deployment.yaml`

Creating an edge route: `oc create route edge enginx --service enginx --cert=tls.crt --key=tls.key --ca-cert=ca.pem`


