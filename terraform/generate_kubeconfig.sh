#!/bin/bash

# Pega os outputs do Terraform
CLUSTER_NAME=$(terraform output -raw cluster_name)
CLUSTER_ENDPOINT=$(terraform output -raw cluster_endpoint)
CLUSTER_CA_DATA=$(terraform output -raw cluster_certificate_authority_data)

# Cria a pasta .kube se não existir
mkdir -p ~/.kube

# Gera o arquivo kubeconfig
cat > ~/.kube/config <<EOF
apiVersion: v1
clusters:
- cluster:
    server: ${CLUSTER_ENDPOINT}
    certificate-authority-data: ${CLUSTER_CA_DATA}
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: aws
  name: aws
current-context: aws
kind: Config
preferences: {}
users:
- name: aws
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1beta1
      command: aws
      args:
        - eks
        - get-token
        - --cluster-name
        - ${CLUSTER_NAME}
EOF

echo "kubeconfig gerado em ~/.kube/config com sucesso!"
