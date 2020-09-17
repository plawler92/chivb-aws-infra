terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 2.70"
        }
    }
    backend "s3" {
        bucket = "chivb-terraform-state"
        key = "prod/terraform.tfstate"
        region = "us-east-2"
    }
}

provider "aws" {
    region = var.region
}

module "networking" {
    source = "./networking"
}