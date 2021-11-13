
output "ami" {
    value = aws_instance.web.ami
}

output "ip" {
    value = aws_instance.web.public_ip
}

output "instance-type" {
    value = aws_instance.web.instance_type 
}

output "tags" {
    value = aws_instance.web.tags_all
}

output "arn" {
    value = aws_instance.web.arn
}

output "vpc_tags" {
    value = aws_vpc.main.tags_all
}

output "volume_id" {
    value = aws_ebs_volume.example.id
}