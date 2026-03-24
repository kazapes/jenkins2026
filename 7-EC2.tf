# resource "aws_key_pair" "jenkins" {
#   key_name   = "jenkins2026"
#   public_key = file("~/.ssh/id_rsa.pub")
# }

resource "aws_instance" "jenkins_server" {
  ami                         = "ami-0ab2a14ef6590f317"
  associate_public_ip_address = true
  instance_type               = "t3.small"
  # instance_type = "c7i-flex.large" # free tier eligible/ suggested by Cloud Bash

  #   key_name = aws_key_pair.jenkins.key_name
  key_name = "jenkins2026"

  vpc_security_group_ids = [aws_security_group.main-sg.id]
  subnet_id              = aws_subnet.public-af-south-1a.id

  user_data = file("jenkins_user_data.sh")
  # user_data = file("jenkins_server_Bash_Cloudv3.sh")

  tags = {
    Name = "jenkins-server"
  }
}