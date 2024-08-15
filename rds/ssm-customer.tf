resource "aws_ssm_parameter" "customer_db_host" {
  name  = "/${var.customer_service_name}/db_host"
  value = aws_db_instance.customer_db.address
  type  = "String"
}

resource "aws_ssm_parameter" "customer_db_name" {
  name  = "/${var.customer_service_name}/db_name"
  value = aws_db_instance.customer_db.db_name
  type  = "String"
}

resource "aws_ssm_parameter" "customer_db_username" {
  name  = "/${var.customer_service_name}/db_username"
  value = aws_db_instance.customer_db.username
  type  = "String"
}

resource "aws_ssm_parameter" "customer_db_password" {
  name  = "/${var.customer_service_name}/db_password"
  value = aws_db_instance.customer_db.password
  type  = "SecureString" # Important to store the password securely in SSM
}
