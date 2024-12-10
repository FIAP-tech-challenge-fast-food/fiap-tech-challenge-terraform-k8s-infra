resource "aws_s3_bucket" "s3-bucket-tech-challenge" {
  bucket = "bucket-${var.projectName}"
}