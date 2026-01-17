#Terraform block 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

#Provider block
provider "aws" {
    region = "us-east-2"
  # Configuration options
}