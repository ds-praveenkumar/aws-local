provider "aws" {
  region = "us-east-1"
  access_key = "testapp123"
  secret_key = "local"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true
  s3_force_path_style = true
  endpoints {
    s3 = "https://localhost:4566/"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "demo-bucket-terraform"
  acl    = "public-read-write"
 
}