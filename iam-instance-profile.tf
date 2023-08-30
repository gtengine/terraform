resource "aws_iam_instance_profile" "caryak-ec2-instance-profile" {
  name = "caryak-ec2-instance-profile"
  path = "/"
  role = "caryak-iam-role-ec2-instance-bastion"
}