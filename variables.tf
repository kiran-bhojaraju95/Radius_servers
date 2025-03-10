# AWS Region
variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "ap-southeast-2"
}

# Amazon Machine Image (AMI) ID for EC2 Instances
variable "ami_id" {
  description = "Amazon Machine Image ID for EC2 instances"
  type        = string
  default     = "ami-03f052ebc3f436d52"  # Amazon Linux 2 AMI (update if needed)
}

# EC2 Instance Type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# VPC Configuration
variable "vpc_id" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "vpc-099ff9695d5763564"
}

# Subnet 1 Configuration
variable "subnet_1_id" {
  description = "CIDR block for the first subnet"
  type        = string
  default     = "subnet-000e4bfe83a1b3052"
}

variable "availability_zone_1" {
  description = "Availability Zone for the first instance"
  type        = string
  default     = "ap-southeast-2a"
}

# Subnet 2 Configuration
variable "subnet_2_id" {
  description = "CIDR block for the second subnet"
  type        = string
  default     = "subnet-0ac8eeb1a5b1d54ca"
}

variable "availability_zone_2" {
  description = "Availability Zone for the second instance"
  type        = string
  default     = "ap-southeast-2b"
}

# Instance Names
variable "instance_name_1" {
  description = "Name of the first EC2 instance"
  type        = string
  default     = "linux-server-1"
}

variable "instance_name_2" {
  description = "Name of the second EC2 instance"
  type        = string
  default     = "linux-server-2"
}
