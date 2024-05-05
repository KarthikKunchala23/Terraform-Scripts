resource "aws_security_group" "app01sg" {
  name = "App01security"

  ingress {
    description = "Allow inbound from application"
    from_port = local.app_port
    to_port = local.app_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # security_groups = [aws_security_group.app01sg.id]
  }

  egress {
    from_port = 0
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "elbsg" {
  name = "loadbalancer security"

  ingress {
    description = "Allow internet traffic"
    from_port = local.app_port
    to_port = local.app_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "outbound"
    from_port = 0
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

locals {
  app_port = 8444
}

output "sg_id" {
  value = aws_security_group.app01sg.id
}

output "elb_id" {
  value = aws_security_group.elbsg.id
}