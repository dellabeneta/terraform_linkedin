resource "aws_autoscaling_policy" "instance_policy_up" {
  name                   = local.policy_up[terraform.workspace]
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
}

resource "aws_cloudwatch_metric_alarm" "instance_cpu_alarm_up" {
  alarm_name          = local.instancecpu_alarm_up[terraform.workspace]
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "70"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.autoscaling_group.name
  }
  alarm_actions = [aws_autoscaling_policy.instance_policy_up.arn]
}


resource "aws_autoscaling_policy" "instance_policy_down" {
  name                   = local.policy_down[terraform.workspace]
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
}

resource "aws_cloudwatch_metric_alarm" "instance_cpu_alarm_down" {
  alarm_name          = local.instancecpu_alarm_down[terraform.workspace]
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "30"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.autoscaling_group.name
  }
  alarm_actions = [aws_autoscaling_policy.instance_policy_down.arn]
}
