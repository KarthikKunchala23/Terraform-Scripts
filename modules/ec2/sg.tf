# resource "aws_security_group" "ec2-app-sg" {
#   name = "security group for app ec2"
# }

# resource "aws_vpc_security_group_ingress_rule" "inboundruleforappec2" {
#     security_group_id = aws_security_group.ec2-app-sg.id
#     description = "allow inbound traffic to port 8444"
#     from_port = local.app_port
#     to_port = local.app_port
#     ip_protocol = "tcp"
#     cidr_ipv4 = "0.0.0.0/0"
# }

# resource "aws_vpc_security_group_egress_rule" "outboundruleforappec2" {
#   security_group_id = aws_security_group.ec2-app-sg.id
#   description = "send all traffic from ec2"
#   from_port = 0
#   to_port = 0
#   ip_protocol = "-1"
#   cidr_ipv4 = "0.0.0.0/0"

# }


# resource "aws_security_group" "elb-sg" {
#   name = "security group for load balancer"
# }

# resource "aws_vpc_security_group_ingress_rule" "inboundruleforelb" {
#     security_group_id = aws_security_group.elb-sg.id
#     description = "allow inbound traffic to port 8444"
#     from_port = local.app_port
#     to_port = local.app_port
#     ip_protocol = "tcp"
#     cidr_ipv4 = "0.0.0.0/0"
# }

# resource "aws_vpc_security_group_egress_rule" "outboundruleforelb" {
#   security_group_id = aws_security_group.elb-sg.id
#   description = "send all traffic from elb"
#   from_port = 0
#   to_port = 0
#   ip_protocol = "-1"
#   cidr_ipv4 = "0.0.0.0/0"

# }

# locals {
#   app_port = 8444
# }
# #locals are can't override by user from destination as variables

# output "sg_id" {
#   value = aws_security_group.ec2-app-sg.id
# }

#commented as these was written in separate resource file-->sg1.tf
# the configuration here can't attach ingress and egress rules to security groups