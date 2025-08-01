output "ec2-output-public-ip" {
    value = aws_instance.my-first-ec2-01.public_ip
  
}
output "ec2-output-private-ip" {
    value = aws_instance.my-first-ec2-01.private_ip
  
}
output "ec2-output-dns" {
    value = aws_instance.my-first-ec2-01.public_dns
  
}