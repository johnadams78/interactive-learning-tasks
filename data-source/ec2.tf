resource "aws_instance" "web" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = "t2.micro"
  availability_zone = data.aws_availability_zones.all[0]
}

resource "aws_instance" "web1" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  availability_zone      = data.aws_availability_zones.all[0]
  vpc_security_group_ids = [aws_security_group_allow_tls.id]
  key_name               = aws_key_pair.class.key_name

#Connect to the instance
provisioner "remote-exec" {
  connection {
    host        = aws_instance_web_public_ip
    type        = "ssh"
    user        = "centos"
    private_key = file("~/.ssh/id_rsa")
  }
  # After connection isntance install the following packages
  inline = [ # it also support script and thus we can use it instate of inline 
    "sudo yum install -y epel-release -y",
    "sudo yum install httpd -y",
    "sudo systemctl start httpd",
    "sudo systemctly enable htppd",
    "sudo yum intall telnet -y"
  ]
}
}

resource "aws_ebs_volume" "example" {
  availability_zone = data.aws_availability_zones.all[0]
  size              = 100
}

