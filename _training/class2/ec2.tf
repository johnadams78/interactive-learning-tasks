data "aws_ami" "amazonami" {
  most_recent = true

/*   filter {
    name   = "name"
    values = ["amazon/Deep Learning AMI GPU TensorFlow 2.6.2 (Amazon Linux 2) 20211111"]
  } */

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["898082745236"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "ami-06229a0003341e160"
  instance_type = "t2.micro"
   

  tags = {
    Name = "HelloWorld"
  }
}




