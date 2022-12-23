terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.16.0"
    }
    github = {
      source = "integrations/github"
      version = "4.26.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "github" {
  # Configuration options
  token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}