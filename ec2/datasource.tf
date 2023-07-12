terraform {
  required_version =  "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = us-east-1
  # Other AWS provider configuration settings
}
module "ec2module" {
    source = "./ec2"
    ec2name = "demo-ec2module"
}
output "module_output" {
    value = module.ec2module.instance_id
}
