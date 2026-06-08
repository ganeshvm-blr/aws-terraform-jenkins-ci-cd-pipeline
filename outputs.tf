output "public_ip" {
  value = aws_instance.devops.public_ip
}

output "instance_id" {
  value = aws_instance.devops.id
}
