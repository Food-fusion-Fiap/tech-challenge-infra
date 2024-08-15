resource "aws_eks_cluster" "eks-cluster" {
  name     = var.clusterName
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids         = [local.aws_public_subnet_id, local.aws_public_subnet2_id]
    security_group_ids = [aws_security_group.sg.id]
    endpoint_public_access = true
    public_access_cidrs = ["0.0.0.0/0"]
  }

  access_config {
    authentication_mode = var.accessConfig
    bootstrap_cluster_creator_admin_permissions = true
  }

  depends_on = [
    aws_security_group.sg
  ]
}
