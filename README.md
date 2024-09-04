OBS.: antes de começar, é necessário criar um S3 manualmente em sua conta AWS. Substitua `terraform-state-fiap-group-18` pelo nome do S3 criado em todos os arquivos necessários.

APPLY:
- Provisionar primeiro a infra do `network`
- `eks`, `rds`, `documentdb` e `sns` podem ser provisionados simultaneamente

- Comando para provisionar `rds`: `terraform apply -var="payment_db_password=rootroot" -var="customer_db_password=rootroot" -var="order_db_password=rootroot"`

- Comando para provisionar `documentdb`:
`terraform apply -var="order_document_db_password=rootroot"`

DESTROY:
- O comando destroy pode ser executado simultaneamente em `eks`, `rds`, `documentdb` e `sns`
- Caso exista um LoadBalancer criado pelo k8s (que é o caso dos serviços três serviços payment-service, customer-service e order-service), é necessário:
  - Destruir os LoadBalancer
  - Destruir todos os SGs associados a ele

## Verificando os logs
O comando nativo do kubectl para verificar os logs não está funcionando no EKS. Portanto, é preciso conectar-se à máquina no EC2 e verificar os logs a partir de lá. Para isso, precisamos:
- Criar um novo Security Group na mesma VPC do EC2 com inboud e outbound do tipo SSH:
![image](https://github.com/user-attachments/assets/547d73aa-7bd6-4bbc-b7ad-dfaf08f0926b)
- Criar um Endpoint Instance Connect (acessá-lo pel VPC -> Endpoints pelo painel esquerdo do console) na mesma VPC da EC2, com o SG criado no passo acima e na mesma subnet da EC2
- No Security Group do EC2 (acessá-lo nos detalhes do EC2 -> aba "Security" -> clicar no SG do EC2) editar as Inbound Rules e adicionar a SG criada no passo acima
- Acessar a partir do terminal a EC2 com o comando `aws ec2-instance-connect ssh --instance-id i-01dcbe8c097929e54 --connection-type eice` (i-01dcbe8c097929e54 é o ID da EC2)
- Dentro da máquina, utilizar os logs estarão na pasta /var (utilizar cd /var e navegar em /var/log/containers ou /var/log/pods/
