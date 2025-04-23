terraform {
  backend "s3" {
    bucket         = "pasindu-terra-test"
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}