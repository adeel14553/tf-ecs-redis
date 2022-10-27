resource "aws_s3_bucket" "tf_s3" {
  bucket = "${var.s3_name}-${var.s3_environment}-s3"

  tags = {
    Name        = "${var.s3_name}-s3"
    Environment = var.s3_environment
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.tf_s3.id
  acl    = "private"
}