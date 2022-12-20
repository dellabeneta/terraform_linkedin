resource "aws_key_pair" "key" {
  public_key = file("~/.ssh/id_rsa.pub")
  key_name   = local.key_pair[terraform.workspace]
}