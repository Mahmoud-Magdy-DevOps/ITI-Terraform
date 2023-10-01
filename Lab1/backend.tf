terraform {
  backend "s3" {
    bucket = "iti-tf"
    key    = "terraform/tfstate"
    region = "us-east-1"

  }
}
