resource "aws_security_group" "main-sg" {
  name        = "main-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "main-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "main-sg-ssh" {
  description       = "Allow SSH inbound traffic"
  security_group_id = aws_security_group.main-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
  tags = {
    Name = "SSH"
  }

}


resource "aws_vpc_security_group_ingress_rule" "main-sg-http" {
  description       = "Allow HTTP inbound traffic"
  security_group_id = aws_security_group.main-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
  tags = {
    Name = "HTTP"
  }

}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.main-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
#   security_group_id = aws_security_group.main-sg.id
#   cidr_ipv6         = "::/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }