variable "db_username" {
  default = "wordpress"
}

variable "db_password" {
  default = "wordpress"
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
    dev = "linkedin_db_dev"
    pro = "linkedin_db_pro"
  }
}

locals {
  db_subnet_group = {
    dev = "linkedin_db_subnet_group_dev"
    pro = "linkedin_db_subnet_group_pro"
  }
}


locals {
  sg_rds_name = {
    dev = "linkedin-sg-rds-dev"
    pro = "linkedin-sg-rds-pro"
  }
}

locals {
  db_identifier = {
    dev = "linkedin-id-rds-dev"
    pro = "linkedin-id-rds-pro"
  }
}