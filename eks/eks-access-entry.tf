resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.eks-cluster.name
  principal_arn     = aws_iam_role.eks_role.arn
  kubernetes_groups = ["fiap", "challenge"]
  type              = "STANDARD"
}