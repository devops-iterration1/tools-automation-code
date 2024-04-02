resource "aws_instance" "ec2" {
  ami           = data.aws_ami.my-ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.my-sg.id]

  tags = {
    Name: var.tool_name
  }
}

resource "aws_route53_record" "a_record" {
  name    = var.tool_name
  type    = "A"
  zone_id = var.zone_id
  records = [aws_instance.ec2.public_ip]
  ttl = 30
}