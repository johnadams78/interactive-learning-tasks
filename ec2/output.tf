
/* output "AMI" {
  value = aws_instance.web.ami
} */



/* output "ARN" {
  value = aws_instance.web.arn
} */

output "ID" {
  value = aws_instance.web.id
}



output "PIP" {
  value = aws_instance.web.public_ip
}

output "key_name" {
  value = aws_instance.web.key_name
}

output "AZ" {
  value = aws_instance.web.availability_zone
}

output "region" {
    value       =  "us-east-1"
}

/* output "private_ip" {
  value = aws_instance.web.private_ip
} */


/* output "KEY_PAIR_INFO" {
  value = "${aws_key_pair.class.key_name} ${aws_key_pair.class.id} ${aws_key_pair.class.arn}"
} */

