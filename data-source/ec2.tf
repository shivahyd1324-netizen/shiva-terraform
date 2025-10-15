resource "aws_instance" "terraform4" {
    ami = data.aws_ami.shivadevops.id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all4.id]
    tags = {
        Name = "terraform4"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all4" {
  name   = "allow-all4"

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

  tags = {
    Name = "allow-all4"
  }

}