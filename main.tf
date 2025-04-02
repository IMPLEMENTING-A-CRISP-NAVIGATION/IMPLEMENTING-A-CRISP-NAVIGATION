provider "aws" {
  region = "us-east-1"  # Adjust this to your region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-abc123-xyz789"  # Ensure this name is unique

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
