terraform {
  backend "s3" {
    bucket = "tfstatebackend2024-09-06"
    key    = "Network/ec2.tfstate"
    region = "us-east-1"
    dynamodb_table = "tfstate-lock-table"
  }
}