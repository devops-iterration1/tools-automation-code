terraform {
  backend "s3" {
    bucket = "expense-tf-states"
    key    = "tools-tf/state"
    region = "us-east-1"
  }
}