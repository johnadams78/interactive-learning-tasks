
resource "aws_instance" "web" {
  ami             = data.aws_ami.centos.id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.bastion_host3.key_name
  security_groups = [aws_security_group.jenkins_sg.name]
  user_data       = "${file("install_jenkins.sh")}"
  tags = {
    Name = "Jenkins"
  }
}





/* resource "aws_instance" "jenkins" {
  ami           = data.aws_ami.centos.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion_host3.key_name
  # associate_public_ip_address = true
  # availability_zone           = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.web_traffic.name] */

  #copy jenkins repo

  connection {
    type        = "ssh"
    user        = "centos"
    private_key = file("~/.ssh/id_rsa")
    host        = aws_instance.jenkins.public_ip
  }

  # run the following commands
/*   provisioner "remote-exec" {
    inline = [
      "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade",
      "sudo yum install epel-release java-11-openjdk-devel",
      "sudo yum install jenkins",
      "sudo systemctl daemon-reload",
      "sudo systemctl start jenkins",
      "sudo jenkins-setup --user admin --pass p@ssw4rd --http-port 8080", */



      /* "sudo yum install -y jenkins java-11-openjdk-devel",
      "sudo yum -y install wget",
      "sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo",
      "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
      "sudo yum upgrade -y",
      "sudo yum install jenkins -y",
      "sudo systemctl start jenkins",
       "sudo jenkins-setup --user admin --pass p@ssw4rd --tcp-port 8080", */
    #]
/*   }

  tags = {
    Name = "jenkins"
  }
} */
