output "vpc_id_test" {
  value = module.networking.vpc.vpc_id
}

output "vpc_name" {
  value = module.networking.vpc.name
}

output "public_sn0_id" {
  value = module.networking.vpc.public_subnets[0]
}
/*
output "ec2_public_ip" {
  value = module.ec2.ec2_instance.public_ip
}


output "public_ip" {
  value = module.networking.vpc.aws_eip.nat[0]
}
*/
