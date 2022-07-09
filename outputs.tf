output "vpc_id_test" {
  value = module.networking.vpc.vpc_id
}

output "vpc_name" {
  value = module.networking.vpc.name
}

output "public_sn0_id" {
  value = module.networking.vpc.public_subnets[0]
}

