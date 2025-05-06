terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "local" {}  # Using local state for demo; use S3 for team projects
}

provider "aws" {
  region = "us-east-1"
}
