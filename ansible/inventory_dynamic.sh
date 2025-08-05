#!/bin/bash

TF_STATE_DIR="../terraform"

INSTANCE_IP=$(terraform -chdir=$TF_STATE_DIR output -raw instance_public_ip)

cat <<EOF
{
  "all": {
    "hosts": ["$INSTANCE_IP"],
    "vars": {
      "ansible_user": "ec2-user",
      "ansible_ssh_private_key_file": "~/.ssh/devops-key.pem"
    }
  }
}
EOF
