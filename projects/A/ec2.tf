module "ec2module" {
  source = "../../modules/ec2"
  instance_type = "t2.small"
}

/*can't change the arrguments of centralized module resource 
instead of that variables are used to give 
explicit values to override default values here we changed instance type
to t2.small where default is t2.micro in source variables.tf file
now type will t2.small */ 