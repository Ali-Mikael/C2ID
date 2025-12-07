# Subnets
# ------
locals {
  subnets = {
    public-1       = cidrsubnet(var.main_cidr, 8, 1)
    private-web-1  = cidrsubnet(var.main_cidr, 8, 3)
    private-web-2  = cidrsubnet(var.main_cidr, 8, 4)
    private-app-1  = cidrsubnet(var.main_cidr, 8, 5)
    private-app-2  = cidrsubnet(var.main_cidr, 8, 6)
    private-data-1 = cidrsubnet(var.main_cidr, 8, 7)
    private-data-2 = cidrsubnet(var.main_cidr, 8, 8)
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
    allow_http  = local.port.https
    allow_https = local.port.ssh
  }
}

# Security groups
# --------------
locals {
  ip_all = "0.0.0.0/0"

  security_groups = {

    instance = {
      allow_http      = { port = local.port.http, cidr_ipv4 = local.ip_all }
      allow_https     = { port = local.port.https, cidr_ipv4 = local.ip_all }
    }

    # Admin SG to attach to an instance to enable ssh access
    admin = {
      allow_ssh = { port = local.port.ssh, cidr_ipv4 = local.ip_all }
    }

    webserver = {
      allow_http  = { port = local.port.http, cidr_ipv4 = var.main_cidr },
      allow_https = { port = local.port.https, cidr_ipv4 = var.main_cidr }
    }

    dbserver = {
      allow_db = { port = local.port.db, cidr_ipv4 = var.main_cidr }
    }

    alb = {
      allow_http  = { port = local.port.http, cidr_ipv4 = local.ip_all },
      allow_https = { port = local.port.https, cidr_ipv4 = local.ip_all }
    }
  }
}

# Public key
# ----------
locals {
  public_key = file("~/.ssh/bastion_key.pub")
}
