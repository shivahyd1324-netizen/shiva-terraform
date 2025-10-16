locals{
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.envirorment}"
    ami_id = data.aws_ami.shivadevops.id
    ec2_tags =merge(
        var.common_tags,
        {
            Name = "${local.common_name}-local-demo"
        }
    )
}