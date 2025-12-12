# ------------------
# -*- Networking -*-
# ------------------

# VPC
resource "aws_vpc" "main" {
  cidr_block       = var.main_cidr
  instance_tenancy = "default"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main-vpc"
  }
}

# The Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-vpc-igw"
  }
}

# NAT gateway
resource "aws_nat_gateway" "nat_gw" {
  count = 2
  subnet_id     = aws_subnet.s["public-subnet-${count.index + 1}"].id
  allocation_id = count.index == 0 ? aws_eip.nat[0].id : aws_eip.nat[1].id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name = "nat-gw-${count.index + 1}"
  }
}
# EIP for NAT
# (required for a public nat)
resource "aws_eip" "nat" {
  count = 2
  domain = "vpc"

  tags = {
    Name = "nat-eip-${count.index + 1}"
  }
}

# Subnets 
# -------
resource "random_shuffle" "az" {
  input        = data.aws_availability_zones.available.names
  result_count = var.az_count
  seed         = var.aws_region
}

resource "aws_subnet" "s" {
  for_each = local.subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = element(random_shuffle.az.result, index(keys(local.subnets), each.key))
  map_public_ip_on_launch = startswith(each.key, "public")

  tags = {
    Name = "${each.key}"
    Tier = startswith(each.key, "public") ? "public" : "private"
  }
}

# Route Table for public subnets
# ------------------------------
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-subnet-rt"
  }
}

# Route Table for private subnets 
# -------------------------------
resource "aws_route_table" "private" {
  count = 2
  vpc_id = aws_vpc.main.id

  # Internet bound traffic through the nat gw
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw[count.index].id
  }

  tags = {
    Name = "private-subnet-rt-${count.index + 1}"
  }
}

# Route table associations
resource "aws_route_table_association" "rta" {
  for_each = aws_subnet.s

  subnet_id      = each.value.id
  route_table_id = startswith(each.key, "public") ? aws_route_table.public.id : (endswith(each.key, "1") ? aws_route_table.private[0].id : aws_route_table.private[1].id)
}

# VPC Endpoint for S3
# -------------------
resource "aws_vpc_endpoint" "s3" {
  vpc_id            = aws_vpc.main.id
  vpc_endpoint_type = "Gateway"

  route_table_ids = [aws_route_table.private[0].id, aws_route_table.private[1].id]
  service_name = "com.amazonaws.${var.aws_region}.s3"

  tags = {
    Name = "s3-vpc-endpoint"
  }
}