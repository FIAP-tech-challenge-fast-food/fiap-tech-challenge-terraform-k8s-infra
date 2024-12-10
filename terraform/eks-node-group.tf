resource "aws_eks_node_group" "node-group-tech-challenge" {
  cluster_name    = aws_eks_cluster.eks-cluster-tech-challenge.name
  node_group_name = "ng-${var.projectName}"
  node_role_arn   = data.aws_iam_role.labrole.arn
  subnet_ids      = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
  instance_types  = [var.instanceType]
  disk_size       = 20

  scaling_config {
    desired_size = 2
    max_size     = 5
    min_size     = 2
  }

  update_config {
    max_unavailable = 1
  }
}