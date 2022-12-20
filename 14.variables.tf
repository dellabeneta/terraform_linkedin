############################################
# variaveis para provider, projeto e dominio
############################################

variable "aws_profile" {
  default = "case.solvimm"
}

variable "aws_region" {
  default = "us-east-1"
}

locals {
  project = {
    dev = "solvimm-project-dev"
    pro = "solvimm-project-pro"
  }
}

locals {
  subdomain_name = {
    dev = "dev.chmod.online"
    pro = "pro.chmod.online"
  }
}
############################################
# variaveis para rede
############################################

variable "aws_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "aws_subnet_bits" {
  type    = number
  default = 8
}

variable "aws_zones_count" {
  type    = number
  default = 6
}

locals {
  vpc_name = {
    dev = "solvimm-vpc-dev"
    pro = "solvimm-vpc-pro"
  }
}

locals {
  subnet_name = {
    dev = "solvimm-subnet-dev"
    pro = "solvimm-subnet-pro"
  }
}

locals {
  lb_name = {
    dev = "solvimm-lb-dev"
    pro = "solvimm-lb-pro"
  }
}

locals {
  listener80 = {
    dev = "solvimm-listener80-dev"
    pro = "solvimm-listener80-pro"
  }
}

locals {
  listener443 = {
    dev = "solvimm-listener443-dev"
    pro = "solvimm-listener443-pro"
  }
}

locals {
  tg_name = {
    dev = "solvimm-tg-dev"
    pro = "solvimm-tg-pro"
  }
}

locals {
  igw_name = {
    dev = "solvimm-igw-dev"
    pro = "solvimm-igw-pro"
  }
}

locals {
  sg_lb_name = {
    dev = "solvimm-sg-lb-dev"
    pro = "solvimm-sg-lb-pro"
  }
}

locals {
  sg_ec2_name = {
    dev = "solvimm-sg-ec2-dev"
    pro = "solvimm-sg-ec2-pro"
  }
}

locals {
  route_table_name = {
    dev = "solvimm-rt-dev"
    pro = "solvimm-rt-pro"
  }
}

############################################
# variaveis para o s3
############################################

variable "bucket_force_destroy" {
  default = true
}

variable "bucket_acl" {
  default = "private"
}

locals {
  bucket_name = {
    dev = "solvimm-s3-bucket-developer"
    pro = "solvimm-s3-bucket-production"
  }
}

############################################
# variaveis para a instancia ec2
############################################

variable "ec2_ami" {
  default = "ami-09d3b3274b6c5d4aa"
}

locals {
  instance_types = {
    dev = "t2.micro"
    pro = "t2.medium"
  }
}

locals {
  ec2_name = {
    dev = "solvimm-webserver-dev"
    pro = "solvimm-webserver-pro"
  }
}

locals {
  key_pair = {
    dev = "solvimm-keypair-dev"
    pro = "solvimm-keypair-pro"
  }
}

############################################
# variaveis para grupo de auto scaling
############################################

locals {
  lt_name = {
    dev = "solvimm-lt-dev"
    pro = "solvimm-lt-pro"
  }
}

locals {
  asg_name = {
    dev = "solvimm-asg-dev"
    pro = "solvimm-asg-pro"
  }
}

locals {
  policy_up = {
    dev = "solvimm-instance-up-dev"
    pro = "solvimm-instance-up-pro"
  }
}

locals {
  policy_down = {
    dev = "solvimm-instance-down-dev"
    pro = "solvimm-instance-down-pro"
  }
}

locals {
  instancecpu_alarm_up = {
    dev = "solvimm-instancecpu-alarm-up-dev"
    pro = "solvimm-instancecpu-alarm-up-pro"
  }
}

locals {
  instancecpu_alarm_down = {
    dev = "solvimm-instancecpu-alarm-down-dev"
    pro = "solvimm-instancecpu-alarm-down-pro"
  }
}