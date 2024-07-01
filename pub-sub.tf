resource "aws_subnet" "pbl1" {
  vpc_id               = aws_vpc.vpc1.id
  cidr_block           = "10.0.208.0/20"
  availability_zone    = "ap-south-1a"

  tags = {
    Name = " terraform-pub-sub1"

  }
}


resource "aws_subnet" "pbl2" {
  vpc_id               = aws_vpc.vpc1.id
  cidr_block           = "10.0.224.0/19"
  availability_zone    = "ap-south-1b"

  tags = {
    Name = " terraform-pub-sub2"

  }
}


