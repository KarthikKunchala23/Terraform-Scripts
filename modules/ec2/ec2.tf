resource "aws_instance" "ec2_04_24" {
  ami = "ami-04e5276ebb8451442"
  instance_type = var.instance_type
}

#if we change any configuration in resource arrguments then projects will get those configurations from source module
#modules are centralized storage for IAC 