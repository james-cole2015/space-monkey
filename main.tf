module "networking" {
  source = "./modules/networking"
  repo-name = var.repo-name
}

module "ec2" {
  source         = "./modules/ec2"
  vpc            = module.networking.vpc.vpc_id
  key_name       = module.key_gen.key_name
  subnet_id      = module.networking.vpc.public_subnets[0]
  security_group = [module.networking.webserver-sg.id]
  repo-name = var.repo-name
}

module "key_gen" {
  source = "./modules/aws_keys"
  repo-name = var.repo-name
}


module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.3.0"
  # insert the 7 required variables here
}
