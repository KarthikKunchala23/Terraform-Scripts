resource "aws_s3_bucket" "example" {
  bucket = "tfstatebackend2024-05-12"

  tags = {
    Name        = "tfstate bucket"
    Environment = "Dev"
  }
}