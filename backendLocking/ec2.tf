resource "aws_instance" "new" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
  count = terraform.workspace == "default" ? 2 : 1

  tags = {
    Name = "vm-${terraform.workspace}-${count.index}"
    Type = "t2 family"
    Environment = "dev"
  }
}