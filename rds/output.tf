output "rds_public_sg_id" {
  description = "RDS public security group ID"
  value       = aws_security_group.rds_public_sg.id
}

output "payment_db_instance_endpoint" {
  description = "The connection to payment db endpoint"
  value       = aws_db_instance.payment_db.endpoint
}

output "customer_db_instance_endpoint" {
  description = "The connection to customer db endpoint"
  value       = aws_db_instance.customer_db.endpoint
}

output "order_db_instance_endpoint" {
  description = "The connection to order db endpoint"
  value       = aws_db_instance.order_db.endpoint
}