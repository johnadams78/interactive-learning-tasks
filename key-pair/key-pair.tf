

resource "aws_key_pair" "Jenkins-key" {
  key_name   = "jen-kins-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
data "aws_region" "current" {}