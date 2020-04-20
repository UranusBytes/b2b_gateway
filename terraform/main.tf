terraform {
  required_providers {
    aws = ">= 2.7.0"
  }
}

provider "aws" {
  region = var.AWS_REGION
  profile = var.AWS_PROFILE
}

module "b2b_gateway" {
  source = "./b2b_gateway"

  file_storage_s3_bucket_name = lower(join("-", [var.FILE_STORAGE_S3_BUCKET, var.ENVIRONMENT, random_id.file_storage_s3_bucket_random_id.keepers.file_storage_s3_bucket]))
}

resource "random_id" "file_storage_s3_bucket_random_id" {
  keepers = {
    file_storage_s3_bucket = var.FILE_STORAGE_S3_BUCKET
  }
  byte_length = 8
}