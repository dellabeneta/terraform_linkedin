resource "aws_subnet" "subnet" {
  count                   = var.aws_zones_count
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(var.aws_vpc_cidr, var.aws_subnet_bits, count.index)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = local.subnet_name[terraform.workspace]
  }
} 