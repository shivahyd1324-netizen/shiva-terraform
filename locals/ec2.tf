resource "aws_instance" "terraform4" {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all4.id]
    tags = local.ec2_tags
}

resource "aws_security_group" "allow_all4" {
  name   = "${local.common_name}-allow-all4"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags =  merge(
  var.common_tags,
        {
            Name = "${local.common_name}-allow-all4"
        }

    )
}