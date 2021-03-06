
data "aws_ami" "centos" {
  #most_recent = true
  

  filter {
    name   = "name"
    values = ["Centos-7-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.centos.id
  instance_type = var.instance_type
  tags = {
    Name = "HelloWorld"
  }
  
}





