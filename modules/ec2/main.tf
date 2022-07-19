module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "${var.repo-name}-instance"

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
    Repo_Name   = "${var.repo-name}"
    Function    = "WebServer"
  }
}

resource "aws_ebs_volume" "ebs_vol_01" {
  #availability_zone = "us-east-1a"
  availability_zone = data.aws_availability_zones.available.names[0]
  size              = 16
  encrypted         = true

  tags = {
    Repo_Name = "${var.repo-name}"
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

resource "aws_launch_template" "webserver-template" {
  name = "${var.repo-name}-launch-template"

  instance_type = "t2.micro"
  key_name      = var.key_name
  monitoring {
    enabled = true
  }
  placement {
    availability_zone = data.aws_availability_zones.available.names[0]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
    Terraform   = "true"
    Environment = "dev"
    Repo_Name   = "${var.repo-name}"
    Function    = "WebServer"
    }
  }
default_version = 2
  user_data = filebase64("ws_bootstrap.sh")
  vpc_security_group_ids = var.security_group
}
