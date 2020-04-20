variable "AWS_REGION" {
  description = "AWS Region for AWS resources"
  type = string
  default = "us-west-2"
}

variable "AWS_PROFILE" {
  description = "AWS profile for authentication to manage AWS resources"
  type = string
  default = "default"
}

variable "TERRAFORM_STATE" {
  description = "Any variables specific to the Terraform state"
  type = map(string)
  default = {}
}

variable "FILE_STORAGE_S3_BUCKET" {
  description = "Name to use for prefix of S3 bucket where files are stored.  Note: Must conform to AWS naming restrictions"
  type = object({
    BUCKET_NAME = string
  })
  # default = "my-b2b-gateway-file-bucket"
}

variable "ENVIRONMENT" {
  description = "String for environment that resources are provisioned for."
  type = string
  default = "Prod"
}
/*
variable "ENVIRONMENTS" {
  description = "List of environments, as strings, that resources are provisioned for."
  type = list(string)
  default = ["Prod", "Dev"]
}*/
