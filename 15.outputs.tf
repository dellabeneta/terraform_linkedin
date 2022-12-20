output "load_balancer_dns_name" {
  value = aws_lb.lb.dns_name
}

output "rds_endpoint" {
  value = aws_db_instance.db_instance.address
}

output "subdomain_name" {
  value = aws_route53_record.alias_subdomain_workspace_to_alb.name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.s3_bucket.arn
}