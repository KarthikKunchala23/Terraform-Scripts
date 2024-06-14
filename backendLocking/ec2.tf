resource "aws_instance" "statelock" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"

  tags = {
    Name = "tfstate file lock ex ec2"
    Type = "t2 family"
  }
}