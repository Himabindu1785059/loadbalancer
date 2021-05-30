resource "aws-eip' "myeip" {
  count = length(aws_instance.base)
  vpc = true
  instance ="${element(aws_instance.base.*.id,count.index}"
  
   tags = {
     name ="default vpc"
   }
}   
   
