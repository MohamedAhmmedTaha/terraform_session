resource "aws_instance" "web_server" {
  ami                    = var.my_ec2_ami
  instance_type          = var.my_ec2_type
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  #   subnet_id     = aws_subnet.public_subnet.id
  user_data = file("install_nginx.sh")
  user_data_replace_on_change = true
  tags = {
    Name = "web_server"
  }
}

