resource "aws_eks_access_policy_association" "eks-policy" {
  cluster_name  = aws_eks_cluster.eks-cluster.name
  policy_arn    = var.policyArn
  principal_arn = aws_iam_role.eks_role.arn

  access_scope {
    type = "cluster"
  }
}