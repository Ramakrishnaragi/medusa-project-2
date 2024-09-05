output "load_balancer_dns" {
  value = aws_lb.medusa_lb.dns_name
}
