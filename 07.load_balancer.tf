resource "aws_lb_target_group" "tg" {
  name     = local.tg_name[terraform.workspace]
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
  tags = {
    Name = local.tg_name[terraform.workspace]
  }
}

resource "aws_lb" "lb" {
  name               = local.lb_name[terraform.workspace]
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg_lb.id]
  subnets            = [for subnet in aws_subnet.subnet : subnet.id]

  access_logs {
    bucket  = local.bucket_name[terraform.workspace]
    prefix  = "access-logs"
    enabled = true
  }
}

resource "aws_lb_listener" "lb_listener_80" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
  tags = {
    Name = local.listener80[terraform.workspace]
  }
}

resource "aws_lb_listener" "lb_listener_443" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "443"
  protocol          = "HTTPS"
  certificate_arn   = "arn:aws:acm:us-east-1:533084366484:certificate/ac46a6db-fba8-41ca-ab0c-6a3024c43e67"
  ssl_policy        = "ELBSecurityPolicy-2016-08"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
  tags = {
    Name = local.listener443[terraform.workspace]
  }
}
