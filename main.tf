module "dev-app" {
  source = "./aws_infra"
  my-env = "dev"
  instance-type = "t2.micro"
  ami-id = "ami-0f5fcdfbd140e4ab7" 
  instance-count = 1
}


module "stg-app" {
  source = "./aws_infra"
  my-env = "stg"
  instance-type = "t2.medium"
  ami-id = "ami-0f5fcdfbd140e4ab7" 
  instance-count = 2
}

module "prod-app" {
  source = "./aws_infra"
  my-env = "prod"
  instance-type = "t2.large"
  ami-id = "ami-0f5fcdfbd140e4ab7" 
  instance-count = 3
}