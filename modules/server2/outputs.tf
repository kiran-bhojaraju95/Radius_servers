output "instance_id" {
  value = aws_instance.server2.id
}

output "public_ip" {
  value = aws_instance.server2.public_ip
}
