# NACL
# ----
resource "aws_network_acl" "nacl" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.s["public-subnet-1"].id]

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
  # Ephemeral ports open so that we can download updates etc..
  ingress {
    protocol   = "tcp"
    rule_no    = 125
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
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

# Ingress rules
resource "aws_vpc_security_group_ingress_rule" "ingress_rules" {
  for_each = tomap({
    for rule in local.sg_rules : "${rule.sg}-${rule.from_port}" => rule
  })

  security_group_id = aws_security_group.sg[each.value.sg].id
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  ip_protocol       = "tcp"
  cidr_ipv4         = each.value.ip
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
