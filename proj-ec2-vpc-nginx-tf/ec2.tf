resource "aws_instance" "my_instance" {
    ami           = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    
    subnet_id = aws_subnet.public_subnet.id
    key_name = "powerkey"
    tags = {
        Name = "sample-instance" #this is the name of instance
    }
    vpc_security_group_ids = [aws_security_group.nginx-sg.id]
    #security_groups = [aws_security_group.nginx-sg.name]
    associate_public_ip_address = true


    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                sudo systemctl enable nginx
                EOF
}

