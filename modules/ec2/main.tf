module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "JacksFlamingSword"

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

resource "aws_ebs_volume" "ebs_vol_01" {
  #availability_zone = "us-east-1a"
  availability_zone = data.aws_availability_zones.available.names[0]
  size              = 16
  encrypted = true

  tags = {
    Name = "JacksFlamingShield"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_vol_01.id
  instance_id = module.ec2_instance.id
}

data "aws_availability_zones" "available" {
  state = "available"
}
