resource "aws_instance" "localexecec2" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    # when = destroy when resource is planed for destroy then provisioner will run before destroy and it will not execute at creation time of resource
    command = "echo ${self.public_ip} >> server_ip.txt"
  }
}