resource "aws_ssm_parameter" "payment_db_host" {
  name  = "/${var.payment_service_name}/db_host"
  value = aws_db_instance.payment_db.address
  type  = "String"
}

resource "aws_ssm_parameter" "payment_db_name" {
  name  = "/${var.payment_service_name}/db_name"
  value = aws_db_instance.payment_db.db_name
  type  = "String"
}

resource "aws_ssm_parameter" "payment_db_username" {
  name  = "/${var.payment_service_name}/db_username"
  value = aws_db_instance.payment_db.username
  type  = "String"
}

resource "aws_ssm_parameter" "payment_db_password" {
  name  = "/${var.payment_service_name}/db_password"
  value = aws_db_instance.payment_db.password
  type  = "SecureString" # Important to store the password securely in SSM
}
