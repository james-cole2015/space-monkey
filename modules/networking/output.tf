output "vpc" {
  value = module.vpc
}

output "allow_webserver-sg" {
  value = aws_security_group.webserver-sg
}
