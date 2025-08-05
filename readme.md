DevOps K8s Observability Project
Infraestrutura como Código, Deploy Automatizado e Observabilidade com Kubernetes.
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
devops-k8s-observability/
 ├─ .github/workflows/
 │   └─ ci-cd.yml           # Pipeline CI/CD
 ├─ terraform/              # Infraestrutura como Código
 ├─ ansible/                # Playbooks para configuração
 ├─ app/                    # Aplicação Dockerizada
 ├─ k8s/                    # Manifests/Helm Charts
 │   └─ monitoring/         # Prometheus & Grafana configs
 ├─ diagrams/               # Diagramas e screenshots
 └─ README.md

🚀 Pipeline do Projeto
Terraform provisiona a infraestrutura em nuvem (AWS ou Azure)

Ansible configura servidores ou prepara o cluster Kubernetes

Docker builda a imagem da aplicação

GitHub Actions (CI/CD):

Build e push da imagem Docker

Deploy automático no cluster Kubernetes

Prometheus + Grafana monitoram métricas de pods e nodes

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


