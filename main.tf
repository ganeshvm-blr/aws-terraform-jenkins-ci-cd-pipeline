resource "aws_instance" "devops" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "devops-lab"
  }
}
