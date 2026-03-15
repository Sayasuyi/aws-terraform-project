provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "osayande-terraform-demo-bucket"
}

resource "aws_lambda_function" "demo_lambda" {
  function_name = "demo-lambda-function"
  role = "arn:aws:iam::123456789012:role/lambda-role"
  handler = "index.handler"
  runtime = "python3.9"
}
