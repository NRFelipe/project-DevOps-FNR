
# 🚀 Projeto DevOps Kubernetes Observability

Este projeto faz parte do meu portfólio em **DevOps e Cloud**, demonstrando habilidades em **provisionamento, automação, deploy em Kubernetes e monitoramento com Prometheus e Grafana**.

## 📂 Estrutura do Projeto

```
devops-k8s-observability/
├── .github/workflows/
│ └── ci-cd.yml # Pipeline CI/CD
├── terraform/ # Infraestrutura como Código (AWS)
├── ansible/ # Playbooks para configuração
├── app/ # Aplicação Dockerizada
├── k8s/ # Manifests e/ou Helm Charts
├── monitoring/ # Prometheus & Grafana configs
├── diagrams/ # Diagramas e screenshots
└── README.md # Documentação do projeto
```
## 🛠️ Tecnologias Utilizadas

- **Cloud:** AWS (EC2, EKS, VPC, Load Balancer)  
- **Infraestrutura como Código:** Terraform  
- **Configuração:** Ansible  
- **Containers & Orquestração:** Docker e Kubernetes  
- **CI/CD:** GitHub Actions  
- **Monitoramento:** Prometheus + Grafana  

---

## ⚡ Como Executar

1. **Provisionar Infraestrutura**
  ```
   bash
   cd terraform
   terraform init
   terraform apply -auto-approve
```

2.Configurar Servidores com Ansible 
```
cd ansible
ansible-playbook setup.yml
```

3. Deplkoy do Kubernetes
```
kubectl apply -f k8s/
```

4. Acessar Grafana
   Configurei o domínio local: grafana.felipe.local

Usuário: admin

Senha: XXXXXXXXXX


📊 Monitoramento e Observabilidade
O cluster foi monitorado com Prometheus e Grafana, incluindo dashboards de:

Uso de CPU e Memória por namespace

Tráfego de rede e pacotes transmitidos/recebidos

Health dos pods e workloads

Prints dos Dashboards


🧹 Finalizando e Evitando Custos
Após concluir os testes, todos os recursos AWS foram destruídos para evitar custos:

terraform destroy

Exclusão manual de ENIs e VPC

Verificação de EC2, EKS e Billing = 0 recursos ativos


📌 Sobre o Projeto
Este projeto foi desenvolvido para aprendizado e demonstração prática de:

Provisionamento com IaC

Automação com Ansible

CI/CD e Deploy em Kubernetes

Monitoramento em tempo real com Grafana

📄 Licença
Distribuído sob a licença MIT. Consulte LICENSE.md para mais informações.
