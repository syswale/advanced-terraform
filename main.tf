# main.tf


terraform {
  backend "s3" {
     bucket         = "olawale-tf-state-bucket-2026"
     key            = "global/s3/terraform.tfstate"
     region         = "us-east-1"
     dynamodb_table = "terraform-state-lock"
     encrypt        =  true
 
   }
 }


terraform {
  required_providers  {
      aws = {
         source = "hashicorp/aws"
         version = "~> 5.0"
      }
    }
 }


provider "aws" {
   region = "us-east-1"
}

 module "my_custom_vpc"  {
    source = "./modules/vpc" 

    vpc_name              = "upwork-client-vpc"
    cidr_block            = "10.0.0.0/16"
    public_subnet_1_cidr  = "10.0.1.0/24"
    public_subnet_2_cidr  = "10.0.2.0/24"
    az_1                  = "us-east-1a"
    az_2                  = "us-east-1b" 
 }
