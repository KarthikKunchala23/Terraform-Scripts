provider "aws" {
  region = "us-east-1"
}

locals {
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

resource "aws_key_pair" "loginkey" {
    key_name = "login-key"
    public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "app-dev" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.loginkey.key_name
  count = terraform.workspace == "default" ? 2 : 1 #workspace terraform.workspace

  tags = {
    # Name = element(var.tags,count.index)
    Name = "vm-${terraform.workspace}-${count.index}"
  }
}

output "timestamp" {
  value = local.time
}