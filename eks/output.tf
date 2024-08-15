output "eks_cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.eks-cluster.endpoint
}
