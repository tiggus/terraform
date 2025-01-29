resource "aws_s3_bucket" "checkov-compliant" {
  bucket = var.checkov_bucket

  tags = {
    Name = var.checkov_bucket
  }
}

resource "aws_s3_bucket" "checkov-non-compliant" {
  bucket = var.checkov_bucket

  tags = {
    Name = var.checkov_bucket
  }
}

resource "aws_s3_bucket_ownership_controls" "checkov-non-compliant" {
  bucket = aws_s3_bucket.checkov-non-compliant.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "checkov-non-compliant" {
  depends_on = [aws_s3_bucket_ownership_controls.checkov-non-compliant]

  bucket = aws_s3_bucket.checkov-non-compliant.id
  acl    = var.checkov_acl
}

resource "aws_s3_bucket_public_access_block" "checkov-non-compliant" {
  bucket = aws_s3_bucket.checkov-non-compliant.id

  block_public_acls       = var.checkov_toggle
  block_public_policy     = var.checkov_toggle
  ignore_public_acls      = var.checkov_toggle
  restrict_public_buckets = var.checkov_toggle
}
