variable "instance_type" {
  default = "t2.micro"
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "ssh_from_port" {
  default = "22"
}
variable "ssh_to_port" {
  default = "22"
}

