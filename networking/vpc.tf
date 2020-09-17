terraform {
    required_providers {
        aws = {
            source = "hasicorp/aws"
            version = "~> 2.70"
        }
    }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_vpc" "terra-test" {
    cidr_block = "10.1.0.0/26"
    instance_tenancy = "default"
}