terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.58.0" # Força uso da versão 5.x compatível
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "admin-devops"
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.20.0" # Módulo estável e compatível com EKS 1.29

  cluster_name    = "devops-portfolio-cluster"
  cluster_version = "1.29"

  # VPC e Subnets
  vpc_id = "vpc-032328b18773c0d5a"
  subnet_ids = [
    "subnet-0e4ae8543304fd24c", # us-east-1a
    "subnet-0b18ce3033035b600", # us-east-1b
    "subnet-0c2dbe8ede4b1213d"  # us-east-1c
  ]

  # Garante que o criador do cluster será admin inicial
  enable_cluster_creator_admin_permissions = true

  # Node Group gerenciado
  eks_managed_node_groups = {
    default = {
      desired_size   = 2
      max_size       = 3
      min_size       = 1
      instance_types = ["t3.medium"]
    }
  }
}
