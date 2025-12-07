# NACL
# -----
resource "aws_network_acl" "nacl" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.s["public-1"]]

  dynamic "ingress" {
    for_each = local.pub_nacl_ingress
    content {
      rule_no    = index(sort(keys(local.pub_nacl_ingress)), ingress.key) * 10 + 100
      protocol   = "tcp"
      action     = "allow"
      from_port  = ingress.value
      to_port    = ingress.value
      cidr_block = "0.0.0.0/0"
    }
  }
  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "public-subnet-nacl"
  }
}


# Security Groups
# ---------------
resource "aws_security_group" "sg" {
  for_each = local.security_groups

  name        = "${each.key}-sg"
  description = "Security group for ${each.key}"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${each.key}-sg"
  }
}

# Creating & associating SG rules
# ------------------------------->
locals {
  # Preparing SGs for rule creation
  sg_rules = flatten([
    for sg, content in local.security_groups : [
      for port, ip in content : {
        sg   = sg
        port = port
        ip   = ip
      }
    ]
  ])
}

# Ingress rules
resource "aws_vpc_security_group_ingress_rule" "ingress_rules" {
  for_each = tomap({
    for rule in local.sg_rules : "${rule.sg}-${rule.port}" => rule
  })

  security_group_id = aws_security_group.sg[each.value.sg].id
  from_port         = each.value.port
  to_port           = each.value.port
  ip_protocol       = "tcp"
  cidr_ipv4         = each.value.ip
  depends_on        = [aws_security_group.sg]
}


# Egress rules
# (allow all outgoing by default)
resource "aws_vpc_security_group_egress_rule" "egress_rules" {
  for_each = aws_security_group.sg

  security_group_id = each.value.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
# <------------------
