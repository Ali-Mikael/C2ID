output "BastionHost" {
  value       = aws_instance.bastion_host.public_ip
  description = "Public IP of bastion host"
}

output "FrontEndALB" {
  description = "ALB DNS name"
  value       = aws_lb.frontend.dns_name
}

output "WebServer1" {
  description = "Web server private IP"
  value       = aws_instance.web_server_1.private_ip
}

output "AppServer1" {
  description = "App server private IP"
  value       = aws_instance.app_server_1.private_ip
}

output "CiServer1" {
  description = "CI server private IP"
  value       = aws_instance.ci_server_1.private_ip
}

output "WebServer2" {
  description = "Web server private IP"
  value       = aws_instance.web_server_2.private_ip
}

output "AppServer2" {
  description = "App server private IP"
  value       = aws_instance.app_server_2.private_ip
}

output "CiServer2" {
  description = "CI server private IP"
  value       = aws_instance.ci_server_2.private_ip
}