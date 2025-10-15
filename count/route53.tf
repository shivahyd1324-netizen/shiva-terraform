resource "aws_route53_record" "shivaroboshop" {
    count = 4
  zone_id = "${var.zone_id}"
  name    = "${var.instances[count.index]}.${var.domaine_name}" # mongodb.shivadevops86s.fun
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform4[count.index].private_ip]
    allow_overwrite = true
}