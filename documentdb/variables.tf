variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  default = "terraform-state-fiap-group-18" //TODO: create your S3 manually in aws
}

variable "order_service_name" {
  description = "The name of the project"
  default     = "order-service"
}

# DocumentDB
variable "order_document_db_username" {
  description = "The username for the database"
  default     = "root"
}

variable "order_document_db_password" {
  description = "Password for the database"
  default     = ""
}