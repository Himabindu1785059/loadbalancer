resource "aws_instance" "base" {
ami = "ami-02f0b22b2e722caaa"
instance_type = "t2.micro"
count = 2 
key_name = "keypair9"
vpc_security_group_ids = [aws_security_group.allow_ports.id]
user-data= <<-EOF
             #!/bin/bash
             yum install -y
             yum install httpd
             echo "hello aws $(hostname  -f)" > /var/www/html/index.html
             service httpd start
             chkconfig httpd on
EOF
tags = {
   name ="bindu{count.index}"
}
}



