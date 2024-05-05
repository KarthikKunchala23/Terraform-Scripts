module "security_group" {
  source = "../../modules/ec2"
}

resource "aws_instance" "ec2app" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.security_group.sg_id]
  
}

output "sg" {
  value = module.security_group.sg_id
}