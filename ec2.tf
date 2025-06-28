resource "aws_instance" "this" {

  ami                     = "ami-09c813fb71547fc4f"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  instance_type           = "t3.micro"
tags = {
    Name = "jenkins"
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "allow_tls"
  }

ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  
}