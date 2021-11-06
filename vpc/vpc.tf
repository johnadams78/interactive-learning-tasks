/* # VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
   tags = {
      Env = "Dev"
      Team        = "DevOps"
    }
}



locals {
  common_tags = {
    Env  = "Dev"
    Team = "DevOps"
  }
}
 */











