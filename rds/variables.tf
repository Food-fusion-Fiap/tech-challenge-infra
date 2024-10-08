variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "s3_bucket_name" {
  default = "terraform-state-fiap-group-18" //TODO: create your S3 manually in aws
}

//Payment
variable "payment_db_password" {
  description = "Password for the database"
  default     = ""
}

variable "payment_db_name" {
  description = "The name of the database"
  default     = "postgresPayment"
}

variable "payment_db_username" {
  description = "The username for the database"
  default     = "postgresPayment"
}

variable "payment_service_name" {
  description = "The name of the project"
  default     = "payment-service"
}

//Customer
variable "customer_db_password" {
  description = "Password for the database"
  default     = ""
}

variable "customer_db_name" {
  description = "The name of the database"
  default     = "postgresCustomer"
}

variable "customer_db_username" {
  description = "The username for the database"
  default     = "postgresCustomer"
}

variable "customer_service_name" {
  description = "The name of the project"
  default     = "customer-service"
}

//Order
variable "order_db_password" {
  description = "Password for the database"
  default     = ""
}

variable "order_db_name" {
  description = "The name of the database"
  default     = "postgresOrder"
}

variable "order_db_username" {
  description = "The username for the database"
  default     = "postgresOrder"
}

variable "order_service_name" {
  description = "The name of the project"
  default     = "order-service"
}