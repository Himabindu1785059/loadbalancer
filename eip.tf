resource "aws-eip" "myeip" {
  count = length(aws_instance.base)
  vpc = true
  instance ="${element(aws_instance.base.*.id,count.index)}"
  
   tags = {
     name ="eip.bindu{count.index + 1}"
   }
}   
   
