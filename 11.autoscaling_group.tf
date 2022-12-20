resource "aws_autoscaling_group" "autoscaling_group" {
  name = local.asg_name[terraform.workspace]
  //desired_capacity          = 1
  min_size                  = 1
  max_size                  = 3
  health_check_grace_period = 180
  health_check_type         = "ELB"
  force_delete              = true
  vpc_zone_identifier       = [for subnet in aws_subnet.subnet : subnet.id]

  target_group_arns = [aws_lb_target_group.tg.arn]

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }
}