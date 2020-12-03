resource "aws_route53_zone" "primary" {
  name    = "bovine.biz"
  comment = "HostedZone created by Route53 Registrar, Managed by Terraform"
}

resource "aws_route53_record" "domain" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "bovine.biz"
  type    = "A"
  alias {
    name    = aws_elb.web.dns_name
    zone_id = aws_elb.web.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "deploy" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "deploy.bovine.biz"
  type    = "A"
  alias {
    name    = aws_elb.web.dns_name
    zone_id = aws_elb.web.zone_id
    evaluate_target_health = true
  }
}
