terraform {
  backend "s3" {
    bucket = "tfstatebackend2024-05-12"
    key    = "Network/terraform.tfstate"
    region = "us-east-1"
  }
}
