#!/bin/bash
kubeseal --fetch-cert --controller-name mgl-sealed-secrets --controller-namespace mgl > mgl-sealed-cert.pem
kubeseal < secrets.yaml --namespace mgl --cert mgl-sealed-cert.pem -o yaml > ./charts/calendar/templates/sealedsecrets.yaml
