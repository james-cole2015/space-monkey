module "networking" {
  source = "./modules/networking"
}

module "ec2" {
  source         = "./modules/ec2"
  vpc            = module.networking.vpc.vpc_id
  key_name       = module.key_gen.key_name
  subnet_id      = module.networking.vpc.public_subnets[0]
  security_group = [module.networking.webserver-sg.id]
}

module "key_gen" {
  source = "./modules/aws_keys"
}


