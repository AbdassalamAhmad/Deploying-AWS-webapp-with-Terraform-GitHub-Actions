output "load_balancer_dns" {
  value     = aws_lb.alb.dns_name
  sensitive = true
}

output "bastion_public_ip" {
  value = aws_instance.bastion_instance_1.public_ip
  #sensitive = true
}

output "application_private_ip_1" {
  value = aws_instance.application_instance_1.private_ip
  #sensitive = true
}

output "application_private_ip_2" {
  value = aws_instance.application_instance_2.private_ip
  #sensitive = true
}

