resource "aws_eks_cluster" "eks-cluster-tech-challenge" {
  name     = "eks-${var.projectName}"
  role_arn = data.aws_iam_role.labrole.arn

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
    security_group_ids = [aws_security_group.eks_security_group.id]
  }

  access_config {
    authentication_mode = var.authMode
  }

}