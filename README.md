APPLY:
- Provisionar primeiro a infra do `network`
- `eks`, `rds` e `documentdb` podem ser provisionados simultaneamente

- Comando para provisionar `rds`: `terraform apply -var="payment_db_password=rootroot" -var="customer_db_password=rootroot" -var="order_db_password=rootroot"`

- Comando para provisionar `documentdb`:
`terraform apply -var="order_document_db_password=rootroot"`

DESTROY:
- O comando destroy pode ser executado simultaneamente em `eks`, `rds` e `documentdb`
- Caso exista um LoadBalancer criado pelo k8s (que é o caso dos serviços três serviços payment-service, customer-service e order-service), é necessário:
  - Destruir os LoadBalancer
  - Destruir todos os SGs associados a ele

