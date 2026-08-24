terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "meu-projeto-devops-2026-gabriel"

  tags = {
    Projeto = "Aula DevOps"
    Ambiente = "Desenvolvimento"
  }
}