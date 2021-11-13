/* data "aws_ebs_volume" "ebs_volume" {
  

  filter {
    name   = "volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "size"
    values = ["10", "20"]
  }

} */

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }

/*   resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
} */

}