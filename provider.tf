terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = "us-east-2" 
}
terraform {
  backend "s3" {
    bucket = "github-action-pic"
    key    = "gitbackup/terraform.tfstate"
    region = "us-east-2"
  }
}
    
