provider "aws" {
  region = "us-east-1"  # Make sure the region matches your desired region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-unique-123456"  # Make sure to make this name unique

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
