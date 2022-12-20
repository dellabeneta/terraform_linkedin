data "aws_lb" "lb_data" {
  arn = aws_lb.lb.arn
}

resource "aws_route53_record" "alias_subdomain_workspace_to_alb" {
  zone_id = "Z10255612AQML7BG0A84P"
  name    = local.subdomain_name[terraform.workspace]
  type    = "A"

  alias {
    name    = data.aws_lb.lb_data.dns_name
    zone_id = data.aws_lb.lb_data.zone_id
    evaluate_target_health = true
  }
}