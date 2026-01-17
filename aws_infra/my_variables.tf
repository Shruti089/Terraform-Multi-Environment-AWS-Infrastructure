variable "my-env" {
 description = "This is the enviromen for infra"
 type = string
}

variable "ami-id" {
  description = "This is the AMI id for EC2"
  type = string
}

variable "instance-type" {
  description = "This is the type of instance for EC2"
  type = string
}

variable "instance-count" {
  description = "This is the count of instances"
  type = number
}
