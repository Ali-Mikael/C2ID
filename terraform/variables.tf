# Region
variable "aws_region" {
  type    = string
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
  type    = string
  default = "t2.micro"
}

# Node type for Redis ElastiCache
variable "redis_node_type" {
  type    = string
  default = "cache.t3.micro"
}

# Engine version for Redis
variable "redis_engine_version" {
  type    = string
  default = "7.0"
}

# RDS instance class
variable "rds_instance_class" {
  type    = string
  default = "db.t3.micro"
}

# DataBase User
variable "db_user" {
  type = string
  sensitive = true
  default = "gitea"
}

# SSH key name for bastion host
variable "bastion_key_name" {
  type        = string
  description = "SSH key name for bastion host"
  default     = "bh-key"
}

# SSH key name for instances
variable "instance_key_name" {
  type        = string
  description = "SSH key name for instances"
  default     = "instance-key"
}
