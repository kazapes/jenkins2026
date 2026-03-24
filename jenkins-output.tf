output "ip_address-jenkins" {
  value = aws_instance.jenkins_server.public_ip
}

output "website_url-jenkins" {
  value = "http://${aws_instance.jenkins_server.public_dns}/"
}

output "website_url-jenkins-8080" {
  value = "http://${aws_instance.jenkins_server.public_ip}:8080/"
}