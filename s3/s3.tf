resource "aws_s3_bucket" "b" {
  bucket = "aws-s3-devops-task-johnadams"
  acl    = "private"
  versioning {
      enabled = true
  }

  tags = {
    Env        = "Dev"
    Team       = "DevOps"
  }
}
