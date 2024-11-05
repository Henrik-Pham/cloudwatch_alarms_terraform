terraform {
  required_version = ">= 1.0"  # Krever minst versjon 1.0 av Terraform
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Bruker AWS-provider versjon 4.x
    }
  }

  backend "s3" {
    bucket = "pgr301-2024-terraform-state"  # S3 bucket for state
    key    = "heph001-state-lab.tfstate"  # Bytt ut <studentnavn> med ditt eget studentnavn
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"  # Velg ønsket region
}
