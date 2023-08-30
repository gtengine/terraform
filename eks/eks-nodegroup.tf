resource "aws_eks_node_group" "caryak-eks-nodegroup" {
  cluster_name = aws_eks_cluster.caryak-eks-cluster.name
  node_group_name = "caryak-eks-nodegroup"
  node_role_arn = aws_iam_role.caryak-iam-role-eks-nodegroup.arn
  subnet_ids = [aws_subnet.caryak-private-subnet1.id, aws_subnet.caryak-private-subnet2.id]
  instance_types = ["t3.medium"]
  disk_size = 20

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 1
    min_size = 1
    max_size = 3
  }

  depends_on = [
    aws_iam_role_policy_attachment.caryak-iam-policy-eks-nodegroup,
    aws_iam_role_policy_attachment.caryak-iam-policy-eks-nodegroup-cni,
    aws_iam_role_policy_attachment.caryak-iam-policy-eks-nodegroup-ecr,
  ]

  tags = {
    "Name" = "${aws_eks_cluster.caryak-eks-cluster.name}-worker-node"
  }
}