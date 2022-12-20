resource "aws_vpc" "vpc" {
  cidr_block           = var.aws_vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = local.vpc_name[terraform.workspace]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}