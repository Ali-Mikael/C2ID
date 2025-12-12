# --------------------
# -*- Local values -*-
# --------------------

# Subnets
# ------
locals {
  subnets = {
    public-subnet-1       = cidrsubnet(var.main_cidr, 8, 1)
    public-subnet-2       = cidrsubnet(var.main_cidr, 8, 2)
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
    jenkins         = 8080
    gitea           = 3000
    postgres        = 5432
    redis           = 6379
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
  # my_ip = "..../." # <- Specify your IP and use with Bastion SG. Principle of least privledge!

  # NOTE: -Potato_version_1.deluxe-
  # Very rigid design and doesn't scale well. Also hard to maintain.  
  # Will fix this when I get the time
  security_groups = {
    test = {
      allow_http  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.ip_all }
      allow_https = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.ip_all }
    }

    bastion = {
      allow_ssh = { from_port = local.port.ssh, to_port = local.port.ssh, cidr_ipv4 = local.ip_all }
    }

    # Attach to an instance => enable SSH access from within VPC
    admin = {
      allow_ssh_from_bastion = { from_port = local.port.ssh, to_port = local.port.ssh, cidr_ipv4 = local.subnets.public-subnet-1 }
    }

    webserver = {
      allow_http_pub1  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.subnets.public-subnet-1 },
      allow_http_pub2  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.subnets.public-subnet-2 },
      allow_https_pub1 = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.subnets.public-subnet-1 }
      allow_https_pub2 = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.subnets.public-subnet-2 }
    }

    appserver = {
      allow_http_web1  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.subnets.private-web-subnet-1 }
      allow_http_web2  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.subnets.private-web-subnet-2 }
      allow_gitea_web1 = { from_port = local.port.gitea, to_port = local.port.gitea, cidr_ipv4 = local.subnets.private-web-subnet-1 }
      allow_gitea_web2 = { from_port = local.port.gitea, to_port = local.port.gitea, cidr_ipv4 = local.subnets.private-web-subnet-2 }
    }

    ciserver = {
      allow_jenkins_app1 = { from_port = local.port.jenkins, to_port = local.port.jenkins, cidr_ipv4 = local.subnets.private-app-subnet-1 }
      allow_jenkins_app2 = { from_port = local.port.jenkins, to_port = local.port.jenkins, cidr_ipv4 = local.subnets.private-app-subnet-2 }
    }

    dbserver = {
      allow_db_app1 = { from_port = local.port.postgres, to_port = local.port.postgres, cidr_ipv4 = local.subnets.private-app-subnet-1 }
      allow_db_app2 = { from_port = local.port.postgres, to_port = local.port.postgres, cidr_ipv4 = local.subnets.private-app-subnet-2 }
    }

    cacheserver = {
      allow_redis_app1 = { from_port = local.port.redis, to_port = local.port.redis, cidr_ipv4 = local.subnets.private-app-subnet-1 }
      allow_redis_app2 = { from_port = local.port.redis, to_port = local.port.redis, cidr_ipv4 = local.subnets.private-app-subnet-2 }
    }

    lb = {
      allow_http  = { from_port = local.port.http, to_port = local.port.http, cidr_ipv4 = local.ip_all },
      allow_https = { from_port = local.port.https, to_port = local.port.https, cidr_ipv4 = local.ip_all },
    }
  }

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
  bastion_pub_key = file("~/.ssh/bastion_key.pub")

  instance_pub_key = file("~/.ssh/vm1.pub")
}

# Buckets
# -------
locals {
  buckets = {
    private = "private-bucket-${random_id.bucket.hex}"
  }
}

# DB user password
locals {
  db_pword = random_password.db.result
}