resource "aws_s3_bucket" "file_storage_s3_bucket" {
  bucket = var.file_storage_s3_bucket_name
  acl    = "private"

  tags = {
    Name        = var.file_storage_s3_bucket_name
    Purpose = "Dev"
  }
}