resource "aws_s3_bucket" "artifacts" {
  bucket = "${var.project_name}-artifacts-${random_password.bucket_suffix.result}"

  tags = {
    Name = "${var.project_name}-artifacts"
  }
}

resource "random_password" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket_versioning" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}