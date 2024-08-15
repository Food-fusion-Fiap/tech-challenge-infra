resource "aws_ssm_parameter" "order_documentdb_host" {
  name  = "/${var.order_service_name}/documentdb_host"
  value = aws_docdb_cluster.mongodb.endpoint 
  type  = "String"
}

resource "aws_ssm_parameter" "order_documentdb_username" {
  name  = "/${var.order_service_name}/documentdb_username"
  value = aws_docdb_cluster.mongodb.master_username
  type  = "String"
}

resource "aws_ssm_parameter" "order_documentdb_password" {
  name  = "/${var.order_service_name}/documentdb_password"
  value = aws_docdb_cluster.mongodb.master_password
  type  = "SecureString" # Important to store the password securely in SSM
}
