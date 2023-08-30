########## EKS Security Group ##########
resource "aws_security_group" "caryak-sg-eks-cluster" {
  name = "caryak-sg-eks-cluster"
  description = "security group for caryak-eks-cluster"
  vpc_id = aws_vpc.caryak-vpc.id

  tags = {
    Name = "caryak-sg-eks-cluster"
  }
}

resource "aws_security_group_rule" "caryak-sg-eks-cluster-ingress" {
  security_group_id = aws_security_group.caryak-sg-eks-cluster.id
  type = "ingress"
  description = "ingress security_group_rule for caryak-eks-cluster"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "caryak-sg-eks-cluster-egress" {
  security_group_id = aws_security_group.caryak-sg-eks-cluster.id
  type = "egress"
  description = "egress security_group_rule for caryak-eks-cluster"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

########## Bastion (ec2 instance) Security Group ##########
resource "aws_security_group" "caryak-sg-bastion" {
  name = "caryak-sg-bastion"
  vpc_id = aws_vpc.caryak-vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "ingress security_group rule for bastion"
    from_port = "22"
    protocol = "tcp"
    self = "false"
    to_port = "22"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "egress security_group rule for bastion"
    from_port = "0"
    protocol = "tcp"
    self = "false"
    to_port = "65535"
  }

  tags = {
    Name = "caryak-sg-bastion"
  }
}