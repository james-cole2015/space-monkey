data "aws_ami" "ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}