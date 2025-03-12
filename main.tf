module "server1" {
  source        = "./modules/server1"
  instance_name = var.instance_name_1
  ami_id        = var.ami_id # Amazon Linux 2 AMI (update as needed)
  instance_type = var.instance_type
  subnet_1_id     = var.subnet_1_id
}

module "server2" {
  source        = "./modules/server2"
  instance_name = var.instance_name_2
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_2_id     = var.subnet_2_id
}

# Create two subnets in different AZs
data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "subnet_1" {
 
  id = var.subnet_1_id
  
}

data "aws_subnet" "subnet_2" {
  
  id = var.subnet_2_id
 
}
