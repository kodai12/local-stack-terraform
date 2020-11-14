resource "aws_s3_bucket" "local_archive" {
  bucket = "local-archive"
  versioning {
    enabled = true
  }
}
