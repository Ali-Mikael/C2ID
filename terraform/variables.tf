# Region
variable "aws_region" {
  type = string
  default = "us-east-1"
}

# Main cidr_block for the VPC
variable "main_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# How many AZs to use
variable "az_count" {
  type    = number
  default = 2
}

# The instance type
variable "instance_type" {
  type = string
  default = "t2.micro"
}

# SSH key name
variable "key_name" {
  type = string
  description = "SSH key name"
  default = "bh-key"
}