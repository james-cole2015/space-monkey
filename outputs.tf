output "vpc_id_test" {
  value = module.networking.vpc.vpc_id
}

output "vpc_name" {
  value = module.networking.vpc.name
}

output "public_sn0_id" {
  value = module.networking.vpc.public_subnets[0]
}

output "ec2_pub_ip" {
  value = module.ec2.ec2_public_ip
}

output "ssh_string1" {
  value = "ssh ubuntu@${module.ec2.ec2_public_ip} -i ${module.key_gen.key_name}.pem"
}

