resource "aws_s3_bucket" "s3_bucket" {
  bucket        = local.bucket_name[terraform.workspace]
  force_destroy = var.bucket_force_destroy
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = local.bucket_name[terraform.workspace]
  acl    = var.bucket_acl
}

resource "aws_s3_object" "s3_object" {
  bucket = aws_s3_bucket.s3_bucket.id
  key    = "wp-config.php"
  acl    = "public-read"
  source = "wp-config.php"
  etag   = filemd5("wp-config.php")
}