data "aws_ami" "shivadevops" {
    owners = ["973714476881"]
       most_recent      = true
        
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
      filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.shivadevops.id
}
data "aws_instance" "terraform" {
   instance_id = "i-061da80780de59cd2" 
}
output "terraform" {
    value = data.aws_instance.terraform.public_ip
}