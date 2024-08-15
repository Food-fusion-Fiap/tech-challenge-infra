resource "aws_ssm_parameter" "order_db_host" {
  name  = "/${var.order_service_name}/db_host"
  value = aws_db_instance.order_db.address
  type  = "String"
}

resource "aws_ssm_parameter" "order_db_name" {
  name  = "/${var.order_service_name}/db_name"
  value = aws_db_instance.order_db.db_name
  type  = "String"
}

resource "aws_ssm_parameter" "order_db_username" {
  name  = "/${var.order_service_name}/db_username"
  value = aws_db_instance.order_db.username
  type  = "String"
}

resource "aws_ssm_parameter" "order_db_password" {
  name  = "/${var.order_service_name}/db_password"
  value = aws_db_instance.order_db.password
  type  = "SecureString" # Important to store the password securely in SSM
}
