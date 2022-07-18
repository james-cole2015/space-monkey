output "ec2_public_ip" {
  value = module.ec2_bastion.public_ip
}

output "ec2_id" {
  value = module.ec2_bastion.id
}

output "ebs_vol_id" {
  value = aws_ebs_volume.ebs_vol_01
}

output "ec2_info" {
 value = module.ec2_bastion
}

output "ebs_info" {
value = aws_ebs_volume.ebs_vol_01
}

output "ec2_tags" {
value = module.ec2_bastion.tags_all
}

output "ec2_node_cidr" {
  value = ["${module.ec2_bastion.public_ip}/32"] 
}
