terraform {
  backend "s3" {
    bucket = "bucket-tech-challenge"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}