terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "rds-migration/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

