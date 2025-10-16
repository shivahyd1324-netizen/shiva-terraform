
variable "project" {
    default = "shivaroboshop"
}

variable "envirorment" {
    default = "dev"
}
  # variable "common_name" {
  #     default = "${var.project}-${var.environment}"
  # }


 variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}

variable "instance_type" {
type = string
    default = "t3.micro"

}

variable "common_tags" {
    type = map
    default = {
        terraform = "true"
        project = "shivaroboshop"
        Envirorment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow_all4"
    description = "seccurity group name attach to ec2 instance"
}

variable "cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}
variable "egress_from_port" {
    default = 0
}
variable "egress_to_port" {
    default = 0
}
variable "protocol" {
default = "-1"
}
