/*
output "ec2_public_ip" {
 value = module.ec2.public_ip
}
*/

output "ec2_public_ip" {
    value = module.ec2_instance.public_ip
}