# DevOps K8s Observability Project

## Infraestrutura como Código, Deploy Automatizado e Observabilidade com Kubernetes.
Este projeto demonstra um pipeline completo de DevOps, incluindo Terraform, Ansible, Docker, Kubernetes, GitHub Actions (CI/CD) e monitoramento com Prometheus + Grafana.

📌 Objetivos do Projeto
Criar uma infraestrutura automatizada com Terraform e Ansible

Deployar uma aplicação containerizada em Kubernetes

Configurar um pipeline de CI/CD com GitHub Actions

Implementar monitoramento e observabilidade com Prometheus e Grafana

Documentar o projeto para servir como portfólio DevOps

🛠️ Tecnologias Utilizadas
Warp – Terminal moderno para visualizações e automação

Terraform – Infraestrutura como Código (IaC)

Ansible – Automação e configuração de servidores

Docker – Containerização da aplicação

Kubernetes (K8s) – Orquestração de containers

GitHub Actions – CI/CD e deploy automatizado

Prometheus & Grafana – Observabilidade e métricas (ou Datadog como alternativa)

📂 Estrutura do Projeto

```
devops-k8s-observability/
├── .github/workflows/
│   └── ci-cd.yml          # Pipeline CI/CD para build e push da imagem Docker
├── terraform/
│   ├── main.tf            # Definição da infraestrutura (ex: EC2, cluster K8s)
│   ├── variables.tf       # Variáveis de ambiente do Terraform
│   └── outputs.tf         # Saídas (IP público, etc.)
├── ansible/
│   ├── playbook.yml       # Playbook para instalar Docker/K8s/Monitoring
│   └── inventory.ini      # Inventário dos servidores/VMs
├── app/
│   ├── Dockerfile         # Dockerfile da aplicação Flask
│   ├── requirements.txt   # Dependências da aplicação
│   └── src/app.py         # Código da aplicação web
├── k8s/
│   ├── app-deployment.yaml # Deployment da aplicação no Kubernetes
│   ├── app-service.yaml    # Service para expor a aplicação
│   └── ingress.yaml        # Ingress Controller
├── monitoring/
│   ├── grafana-values.yaml    # Configurações do Grafana (Helm)
│   └── prometheus-values.yaml # Configurações do Prometheus (Helm)
├── diagrams/
│   └── architecture.png    # Diagramas e screenshots para documentação
└── README.md
```

## 🚀 Projeto Pipeline de DevOps

### 1. Provisionamento de Infraestrutura
- **Terraform**: Automatiza a criação de infraestrutura na nuvem (AWS ou Azure).

### 2. Configuração de Servidores
- **Ansible**: Configura servidores e prepara o cluster Kubernetes.

### 3. Containerização de Aplicativos
- **Docker**
  - Construção e armazenamento da imagem da aplicação.

### 4. Orquestração e Implantação
- **Kubernetes (K8s)**
  - Utiliza manifests ou Helm Charts para deploy automático no cluster.

### 5. Integração e Entrega Contínua
- **GitHub Actions (CI/CD)**
  - Pipeline para build e push da imagem Docker.
  - Deploy automático no Kubernetes.

### 6. Monitoramento e Observabilidade
- **Prometheus & Grafana**
  - Monitoramento de métricas de pods e nós do cluster.
  - **(Alternativa: Datadog)**

### 7. Documentação e Demonstração
- Adicione capturas de tela e GIFs para demonstrar o pipeline em ação.

📸 Demonstração
CI/CD rodando no GitHub Actions

Pods rodando no Kubernetes via Warp

Dashboard Grafana com métricas da aplicação

(Adicione prints e GIFs aqui após a execução do projeto)

⚡ Como Reproduzir

Clone o repositório

Configure suas credenciais da nuvem

Execute o Terraform e Ansible para criar a infraestrutura

Configure os secrets no GitHub para o CI/CD

Faça o deploy e visualize as métricas no Grafana


