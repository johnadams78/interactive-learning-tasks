# Private Subnet-1
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availibility_zone = "eu-west-1a"
  tags       = local.common_tags
}
# Private Subnet-2
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availibility_zone = "eu-west-1b"
  tags       = local.common_tags
}
# Private Subnet-3
resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availibility_zone = "eu-west-1c"
  tags       = local.common_tags
}