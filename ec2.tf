resource "aws_instance" "ec2_instance" {
  ami           = "ami-0703b5d7f7da98d1e"
  instance_type = "t3.micro"
  #security_groups = ["aws_security_group.ec2_security_group.name"]
  

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  tags = {
    purpose = "Assignment"
  }
}