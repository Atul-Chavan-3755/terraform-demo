resource " aws_subnet " "pri1" {
  vpc_id              = aws_vpc.vpc1.id
  cidr_block          = "10.0.128.0/18"
  availability_zone   = "ap-south-1c"

  tags = {
    Name = " terraform-pri-sub1 "
  }
}




resource " aws_subnet " "pri2" {
  vpc_id               = aws_vpc.vpc1.id
  cidr_block           = "10.0.192.0/21"
  availability_zone    = "ap-south-1c"

  tags = {
    Name = " terraform-pri-sub2 "
  }
}
