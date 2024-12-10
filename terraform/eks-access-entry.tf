resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.eks-cluster-tech-challenge.name
  principal_arn     = "arn:aws:iam::${var.accountIdVoclabs}:role/voclabs"
  kubernetes_groups = ["tech-challenge"]
  type              = var.accessEntryType
}