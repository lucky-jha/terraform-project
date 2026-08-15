resource "aws_security_group" "nginx-sg" {
 
  description = "Allow HTTP and SSH traffic"
  vpc_id      = aws_vpc.my_vpc.id


#inbound rules use ingress
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }


#outbound rules use egress
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "nginx-sg"
    }

}