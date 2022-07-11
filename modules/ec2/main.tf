module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "JacksFlamingRevenge"

  ami                    = "ami-0439517b5e436bdab"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = var.security_group
  subnet_id              = var.subnet_id
  user_data              = file("ws_bootstrap.sh")


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
