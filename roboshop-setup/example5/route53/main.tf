resource "aws_route53_record" "record" {
  zone_id = "Z05260162XS3U1UPP64CC"
  name    = "${var.component}-dev.saraldevops.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}