output "BastionHost" {
  value       = aws_instance.bastion_host.public_ip
  description = "Public IP of bastion host"
}

output "WebServer" {
  description = "Web server private IP"
  value       = aws_instance.web_server.private_ip
}

output "AppServer" {
  description = "App server private IP"
  value       = aws_instance.app_server.private_ip
}

output "CiServer" {
  description = "CI server private IP"
  value       = aws_instance.ci_server.private_ip
}

output "FrontEndALB" {
  description = "ALB DNS name"
  value       = aws_lb.frontend.dns_name
}