resource "aws_route53_record" "record" {
  zone_id = "Z07013421USQO5ED15QGP" //  "Z05260162XS3U1UPP64CC"
  name    = "${var.component}-dev.saraldevops.site"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}