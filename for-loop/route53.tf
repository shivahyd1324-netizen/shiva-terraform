resource "aws_route53_record" "shivaroboshop" {
    for_each = aws_instance.terraform4
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}" # mongodb.shivadevops86s.fun
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
    allow_overwrite = true
}