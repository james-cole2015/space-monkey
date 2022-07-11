module "networking" {
  source = "./modules/networking"
}

module "ec2" {
  source         = "./modules/ec2"
  vpc            = module.networking.vpc.vpc_id
  subnet_id      = module.networking.vpc.public_subnets[0]
  security_group = [module.networking.allow_ssh.id, module.networking.allow_http.id, module.networking.allow_https.id]
}

module "key_gen" {
  source = "./modules/aws_keys"
}


