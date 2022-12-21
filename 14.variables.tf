############################################
# variaveis para provider, projeto e dominio
############################################

variable "aws_profile" {
  default = "linkedin"
}

variable "aws_region" {
  default = "us-east-1"
}

locals {
  project = {
    dev = "linkedin-project-dev"
    pro = "linkedin-project-pro"
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
    dev = "linkedin-vpc-dev"
    pro = "linkedin-vpc-pro"
  }
}

locals {
  subnet_name = {
    dev = "linkedin-subnet-dev"
    pro = "linkedin-subnet-pro"
  }
}

locals {
  lb_name = {
    dev = "linkedin-lb-dev"
    pro = "linkedin-lb-pro"
  }
}

locals {
  listener80 = {
    dev = "linkedin-listener80-dev"
    pro = "linkedin-listener80-pro"
  }
}

locals {
  listener443 = {
    dev = "linkedin-listener443-dev"
    pro = "linkedin-listener443-pro"
  }
}

locals {
  tg_name = {
    dev = "linkedin-tg-dev"
    pro = "linkedin-tg-pro"
  }
}

locals {
  igw_name = {
    dev = "linkedin-igw-dev"
    pro = "linkedin-igw-pro"
  }
}

locals {
  sg_lb_name = {
    dev = "linkedin-sg-lb-dev"
    pro = "linkedin-sg-lb-pro"
  }
}

locals {
  sg_ec2_name = {
    dev = "linkedin-sg-ec2-dev"
    pro = "linkedin-sg-ec2-pro"
  }
}

locals {
  route_table_name = {
    dev = "linkedin-rt-dev"
    pro = "linkedin-rt-pro"
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
    dev = "linkedin-s3-bucket-developer"
    pro = "linkedin-s3-bucket-production"
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
    dev = "linkedin-webserver-dev"
    pro = "linkedin-webserver-pro"
  }
}

locals {
  key_pair = {
    dev = "linkedin-keypair-dev"
    pro = "linkedin-keypair-pro"
  }
}

############################################
# variaveis para grupo de auto scaling
############################################

locals {
  lt_name = {
    dev = "linkedin-lt-dev"
    pro = "linkedin-lt-pro"
  }
}

locals {
  asg_name = {
    dev = "linkedin-asg-dev"
    pro = "linkedin-asg-pro"
  }
}

locals {
  policy_up = {
    dev = "linkedin-instance-up-dev"
    pro = "linkedin-instance-up-pro"
  }
}

locals {
  policy_down = {
    dev = "linkedin-instance-down-dev"
    pro = "linkedin-instance-down-pro"
  }
}

locals {
  instancecpu_alarm_up = {
    dev = "linkedin-instancecpu-alarm-up-dev"
    pro = "linkedin-instancecpu-alarm-up-pro"
  }
}

locals {
  instancecpu_alarm_down = {
    dev = "linkedin-instancecpu-alarm-down-dev"
    pro = "linkedin-instancecpu-alarm-down-pro"
  }
}