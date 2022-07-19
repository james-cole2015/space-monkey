variable "region" {
  default = "us-east-1"
}

variable "subnet_id" {
  type    = any
  default = ["$module.networking.vpc.public_subnets[0]"]
}

variable "repo-name" {
  type    = string
  default = "space-monkey"

}
