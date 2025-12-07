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
  subnet_id     = aws_subnet.s["public-1"].id
  allocation_id = aws_eip.nat.id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name = "main-nat-gw"
  }
}
# EIP for NAT
# (required for a public nat)
resource "aws_eip" "nat" {
  domain = "vpc"
  tags = {
    Name = "main-nat-eip"
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
    Name = "subnet-${each.key}"
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
  vpc_id = aws_vpc.main.id

  # Internet bound traffic through the nat gw
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "private-subnet-rt"
  }
}

# Route table associations
resource "aws_route_table_association" "rta" {
  for_each = aws_subnet.s

  subnet_id      = each.value.id
  route_table_id = startswith(each.key, "public") ? aws_route_table.public.id : (startswith(each.key, "private") ? aws_route_table.private.id : "")
}

# # ALB
# resource "aws_lb" "web_alb" {
#   name               = "web-alb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.sg["alb"].id]

#   subnet_mapping {
#     subnet_id     = aws_subnet.s["public-1"].id
#     allocation_id = aws_eip.alb.id
#   }

#   tags = {
#     Name     = "web-tier-alb"
#     Position = "public-facing"
#   }
# }
# # EIP for ALB
# resource "aws_eip" "alb" {
#   domain = "vpc"

#   tags = {
#     Name = "web-alb-eip"
#   }
# }