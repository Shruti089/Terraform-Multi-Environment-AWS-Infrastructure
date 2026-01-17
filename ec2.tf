# Key-pair
resource "aws_key_pair" "deployer" {
  key_name = "terra-key"
  public_key = file("C:/Users/LENOVO/OneDrive/Documents/CERTIFICATE/Desktop/Terraform/terraform-practice/terra-key.pub")
}

# VPC
resource "aws_default_vpc" "default" {
  
}

# Security Group
resource "aws_security_group" "terrasecurity" {
  name = "allow-ports"
  description = "this security group is to open port for ec2 instance"
  vpc_id = aws_default_vpc.default.id # interpolation

  # Icoming traffic
  ingress {
    description = "This is for SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # anywhere
  }
  
   # Outgoing traffic
  egress {
    description = "This is for outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1" # -1 mtlb sare outgoing traffic allowed
    cidr_blocks = ["0.0.0.0/0"]

  }
}

# EC2 instance
resource "aws_instance" "my-instance" {
    ami = "ami-0f5fcdfbd140e4ab7"  # ubuntu
    instance_type = "t2.micro"     # free tier
    key_name = aws_key_pair.deployer.key_name  # key
    security_groups = [aws_security_group.terrasecurity.name] # SG
    tags = {
        Name = "terra-automate"   #Name
    }
  
}