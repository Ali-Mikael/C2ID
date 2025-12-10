output "bastion_public_ip" {
  value = aws_instance.bastion_host.public_ip
  description = "Public IP of bastion host"
}

output "webserv_priv_ip" {
  description = "Web server private IP"
  value       = aws_instance.web_server.private_ip
}

output "appserv_priv_ip" {
  description = "App server private IP"
  value       = aws_instance.app_server.private_ip
}

output "rds_hostname" {
  description = "RDS instance hostname"
  value       = aws_db_instance.rds.address
  # sensitive   = true
}

output "rds_username" {
  description = "RDS instance root username"
  value       = aws_db_instance.rds.username
  sensitive   = true
}

output "lb_dns_name" {
  description = "ALB DNS name"
  value = aws_lb.frontend.dns_name
}