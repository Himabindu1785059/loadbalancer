resource "aws_security_group" "allow-ports" {
  name        = "alb"
  description = "allow inbound traffic"   
  vpc_id      = "${aws_default_vpc.default.id}"
  ingress {
    description = "http from vpc"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
Ingress {
  Description  = "tomcat port from vpc"
  From_port    = 8080
  To_port      = 8080
  Protocol     = "tcp"
  cidr_blocks  = ["0.0.0.0/0"]
  }

Ingress {
  Description  = "TLS from vpc"
  From_port    = 443
  To_port      = 443
  Protocol     = "tcp"
  cidr_blocks  = ["0.0.0.0/0"]
  }

Engress {
  
  From_port    = 0
  To_port      = 0
  Protocol     = "-1"
  cidr_blocks  = ["0.0.0.0/0"]
  }
  Tags = {
    Name = "allow_ports"



 

 
  

	
	
	
	
	

