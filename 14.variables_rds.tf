variable "db_username" {
  default = "wordpressuser"
}

variable "db_password" {
  default = "wordpresspass"
}

variable "allocated_storage" {
  default = "10"
}

variable "db_engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "5.7"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "parameter_group_name" {
  default = "default.mysql5.7"
}

variable "skip_final_snapshot" {
  default = true
}

variable "publicly_accessible" {
  default = true
}

locals {
  db_name = {
    dev = "solvimm_db_dev"
    pro = "solvimm_db_pro"
  }
}

locals {
  db_subnet_group = {
    dev = "solvimm_db_subnet_group_dev"
    pro = "solvimm_db_subnet_group_pro"
  }
}


locals {
  sg_rds_name = {
    dev = "solvimm-sg-rds-dev"
    pro = "solvimm-sg-rds-pro"
  }
}

locals {
  db_identifier = {
    dev = "solvimm-id-rds-dev"
    pro = "solvimm-id-rds-pro"
  }
}