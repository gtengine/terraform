resource "aws_eks_cluster" "caryak-eks-cluster" {
  depends_on = [
    aws_iam_role_policy_attachment.caryak-iam-policy-eks-cluster,
    aws_iam_role_policy_attachment.caryak-iam-policy-eks-cluster-vpc
  ]

  name = var.cluster_name
  role_arn = aws_iam_role.caryak-iam-role-eks-cluster.arn
  version = "1.27"

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_config {
    security_group_ids = [aws_security_group.caryak-sg-eks-cluster.id]
    subnet_ids = [aws_subnet.caryak-private-subnet1.id, aws_subnet.caryak-private-subnet2.id]
    endpoint_public_access = false
    endpoint_private_access = true
  }

  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}