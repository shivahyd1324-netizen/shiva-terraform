resource "aws_security_group" "roboshop_instance" {
  name   = "roboshop_strict-sg"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

   dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content{
        from_port        = ingress.value # here ingress is special key word
        to_port          = ingress.value
        protocol         = "tcp" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] # internet
    }
  }

  tags = {
    Name = "roboshop_strict-sg"
  }

}