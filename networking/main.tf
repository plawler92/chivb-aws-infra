resource "aws_vpc" "chivb-vpc" {
    cidr_block = "10.0.0.0/24"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "chivb-vpc"
    }
}