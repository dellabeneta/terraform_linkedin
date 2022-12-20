resource "aws_db_subnet_group" "db_subnet_group" {
  name       = local.db_subnet_group[terraform.workspace]
  subnet_ids = aws_subnet.subnet.*.id
}