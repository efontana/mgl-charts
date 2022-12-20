#!/bin/bash
kubeseal --fetch-cert  > mgl-sealed-cert.pem
kubeseal < secrets.yaml --scope namespace-wide --namespace mgl --cert mgl-sealed-cert.pem -o yaml > ./charts/calendar/templates/sealedsecrets.yaml
