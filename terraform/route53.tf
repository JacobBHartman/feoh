resource "aws_route53_zone" "primary" {
  name    = "bovine.biz"
  comment = "HostedZone created by Route53 Registrar, Managed by Terraform"
}

resource "aws_route53_record" "domain" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "bovine.biz"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}
