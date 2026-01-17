resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-devops-bucket-trial1"
  tags = {
    Name = "${var.my-env}-devops-bucket-trial1"
    enviroment = var.my-env
  }
}