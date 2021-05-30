resource "aws_instance" "base"
ami =
instance_typy = "t2.micro"
count = 2 
key_name ="${aws_key_pair.key_name}"
vpc_security_group_ids = [aws_security_group.allow_ports.id]
user-data= <<-EOF
             #!/bin/bash
             yum install -y
             echo "hello azure $(hostname  -f)" > /var/www/html/index.html
             service httpd start
             chkconfig httpd on
EOF
tags = {
   name ="bindu{count.index}"
}
}


resource "aws_key_pair" "keypair" 
  key-name   = "keypair9"
  public_key = 
