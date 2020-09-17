resource "aws_vpc" "terra-test" {
    cidr_block = "10.1.0.0/26"
    instance_tenancy = "default"
}