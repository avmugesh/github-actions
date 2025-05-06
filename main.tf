resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-demo-bucket-${random_id.bucket_id.hex}"
  force_destroy = true

  tags = {
    Name        = "My Demo Bucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
