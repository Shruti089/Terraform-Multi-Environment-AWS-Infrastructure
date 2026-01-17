resource "aws_s3_bucket" "my-bucket" {
  bucket = "devops-bucket-trial1"
  tags = {
    Name = "devops-bucket-trial1"
  }
}