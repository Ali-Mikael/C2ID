# Subnets
# ------
locals {
  subnets = {
    public-subnet-1       = cidrsubnet(var.main_cidr, 8, 1)
    private-web-subnet-1  = cidrsubnet(var.main_cidr, 8, 3)
    private-web-subnet-2  = cidrsubnet(var.main_cidr, 8, 4)
    private-app-subnet-1  = cidrsubnet(var.main_cidr, 8, 5)
    private-app-subnet-2  = cidrsubnet(var.main_cidr, 8, 6)
    private-data-subnet-1 = cidrsubnet(var.main_cidr, 8, 7)
    private-data-subnet-2 = cidrsubnet(var.main_cidr, 8, 8)
  }
}

# Port values
# -----------
locals {
  port = {
    ssh             = 22
    http            = 80
    https           = 443
    db              = 3306
    ephemeral_start = 1024
    ephemeral_end   = 65535
  }
}

# NACL
# ----
locals {
  pub_nacl_ingress = {
    allow_ssh   = local.port.ssh
    allow_http  = local.port.http
    allow_https = local.port.https
  }
}

# Security groups
# --------------
locals {
  ip_all = "0.0.0.0/0"

  security_groups = {

    instance = {
      allow_http     = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.ip_all }
      allow_https    = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.ip_all }
      allow_ephemeral = { from_port = local.port.ephemeral_start, to_port = local.port.ephemeral_end, cidr_ipv4 = local.ip_all }
    }

    # Admin SG to attach to an instance to enable ssh access
    admin = {
      allow_ssh = { from_port = local.port.ssh, to_port = local.port.ssh, cidr_ipv4 = local.ip_all }
    }

    webserver = {
      allow_http  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = var.main_cidr },
      allow_https = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = var.main_cidr }
    }

    dbserver = {
      allow_db = { from_port = local.port.db, to_port = local.port.db, cidr_ipv4 = var.main_cidr }
    }

    alb = {
      allow_http  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.ip_all },
      allow_https = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.ip_all }
    }
  }
}
locals {
  # Preparing SGs for rule creation
  sg_rules = flatten([
    for sg, rules in local.security_groups : [
      for rule, value in rules : {
        sg        = sg
        from_port = value.from_port
        to_port   = value.to_port
        ip        = value.cidr_ipv4
      }
    ]
  ])
}

# Public key
# ----------
locals {
  public_key = file("~/.ssh/bastion_key.pub")
}

# Buckets
# -------
locals {
  buckets = {
    private = "private-bucket-${random_id.bucket.hex}"
  }
}