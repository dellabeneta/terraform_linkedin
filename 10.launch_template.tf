resource "aws_launch_template" "lt" {
  name                   = local.lt_name[terraform.workspace]
  image_id               = var.ec2_ami
  instance_type          = local.instance_types[terraform.workspace]
  key_name               = local.key_pair[terraform.workspace]
  vpc_security_group_ids = [aws_security_group.sg_ec2.id]
  user_data            = filebase64("userdata-wordpress.sh")

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = local.ec2_name[terraform.workspace]
    }
  }
}