resource "aws_route53_record" "webserver" {
  zone_id = "Z05859503VOVDG70P4C98"
  name    = "jenkins.johnadamsev.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}