output "Bastion-Host" {
  value       = aws_instance.bastion_host.public_ip
  description = "Public IP of bastion host"
}

output "LB-DNS" {
  description = "LB DNS name"
  value       = aws_elb.frontend.dns_name
}

output "Web-Server1" {
  description = "Web server private IP"
  value       = aws_instance.web_server[0].private_ip
}

output "App-Server1" {
  description = "App server private IP"
  value       = aws_instance.app_server[0].private_ip
}

output "Ci-Server1" {
  description = "CI server private IP"
  value       = aws_instance.ci_server[0].private_ip
}

output "Web-Server2" {
  description = "Web server private IP"
  value       = aws_instance.web_server[1].private_ip
}

output "App-Server2" {
  description = "App server private IP"
  value       = aws_instance.app_server[1].private_ip
}

output "Ci-Server2" {
  description = "CI server private IP"
  value       = aws_instance.ci_server[1].private_ip
}

output "DB-Endpoint" {
  description = "Gitea DB (RDS) endpoint"
  value       = aws_db_instance.rds.endpoint
}