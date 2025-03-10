variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store Terraform state"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "iam_role_name" {
  description = "IAM Role to allow Terraform to access S3"
  type        = string
}

