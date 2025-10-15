resource "aws_instance" "terraform4" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all4.id]
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_all4" {
  name   = var.sg_name

  egress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr_block # internet
  }

  ingress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr_block # internet
  }

  tags = {
    Name = "allow-all4"
  }

}