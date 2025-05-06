terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "terraform-state-myproject1"
    key            = "state/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

