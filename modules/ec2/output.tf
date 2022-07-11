output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_id" {
  value = module.ec2_instance.id
}

output "ebs_vol_id" {
  value = aws_ebs_volume.ebs_vol_01
}

output "ec2_info" {
 value = module.ec2_instance
}

output "ebs_info" {
value = aws_ebs_volume.ebs_vol_01
}
