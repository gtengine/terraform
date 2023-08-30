resource "aws_eip" "caryak-elastic-ip" {
  network_border_group = var.aws_region
  public_ipv4_pool = "amazon"

  tags = {
    Name = "caryak-elastic-ip"
  }

  tags_all = {
    Name = "caryak-elastic-ip"
  }
}