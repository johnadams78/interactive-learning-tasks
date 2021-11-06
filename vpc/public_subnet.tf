# Public Subnet-1
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"
  map_public_ip_on_lunch = true
  availibility_zone = "eu-west-1a"
  tags       = local.common_tags
}
# Public Subnet-1
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"
  map_public_ip_on_lunch = true
  availibility_zone = "eu-west-1b"
  tags       = local.common_tags
}
# Public Subnet-1
resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"
  map_public_ip_on_lunch = true
  availibility_zone = "eu-west-1c"
  tags       = local.common_tags
}