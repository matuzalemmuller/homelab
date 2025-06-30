#!/bin/bash

ansible-playbook playbook/setup-server.yaml -i rpi.homelab.matuzalemmuller.com, -u pi --become --extra-vars "secret_cloudflare_auth_email=$SECRET_CLOUDFLARE_AUTH_EMAIL secret_cloudflare_auth_key=$SECRET_CLOUDFLARE_AUTH_KEY ansible_password=$RASPBERRYPI_PASSWORD"
