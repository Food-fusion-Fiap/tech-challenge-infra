output "docdb_endpoint" {
  value = aws_docdb_cluster.mongodb.endpoint
}

output "docdb_port" {
  value = aws_docdb_cluster.mongodb.port
}