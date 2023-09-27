resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16" 
  tags = {
    Name = "MyVPC"
  }
}

#creating public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"  
}

#creating private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"  
}