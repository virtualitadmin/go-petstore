terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.28"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
 
provider "aws" {
  region  = "eu-west-2"
}
 
module "petstore" {
  source = "terraform-in-action/petstore/aws"
}
 
output "address" {
  value = module.petstore.address
}