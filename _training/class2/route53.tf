/* resource "aws_route53_record" "webserver" {
zone_id = "ZVFBE5NWUNXEY"
name = "test1.enverguner.com"
type = "A"
ttl = "30"
records = [aws_instance.web.public_ip]
} */

resource "aws_route53_record" "webserver" {
  zone_id = "Z05859503VOVDG70P4C98"
  name    = "wordpress.johnadamsev.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}

