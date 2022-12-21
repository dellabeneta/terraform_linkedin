resource "aws_db_instance" "db_instance" {
  identifier           = local.db_identifier[terraform.workspace]
  db_name              = local.db_name[terraform.workspace]
  allocated_storage    = var.allocated_storage
  engine               = var.db_engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  db_subnet_group_name = local.db_subnet_group[terraform.workspace]
  vpc_security_group_ids = [aws_security_group.sg_dbinstance.id]
  //publicly_accessible    = var.publicly_accessible
  skip_final_snapshot    = var.skip_final_snapshot

  depends_on = [aws_db_subnet_group.db_subnet_group]
}
