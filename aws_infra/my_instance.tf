# EC2 instance
resource "aws_instance" "my-instance" {
    count = var.instance-count
    ami = var.ami-id  
    instance_type = var.instance-type     # free tier
   
    tags = {
        Name = "${var.my-env}-devops-bucket-trial1-instance"  #Name
    }
  
}