resource "aws_instance" "tf1" {
  ami                         = "ami-0e1d06225679bc1c5"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.pbl1.id
  vpc_id                      = aws_vpc.vpc1.id
  associate_public_ip_address = true

  tags = {
    Name = "terraform1"
  }
}




resource "aws_instance" "tf2" {
  ami                         = "ami-0e1d06225679bc1c5"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.pbl1.id
  vpc_id                      = aws_vpc.vpc1.id
  associate_public_ip_address = true

  tags = {
    Name = "terraform2"
  }
}


resource "aws_instance" "tf3" {
  ami                         = "ami-0e1d06225679bc1c5"
  intance_type                = "t2.micro"
  availabilit_zone            = "ap-south-1a"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.pbl1.id
  vpc_id                      = aws_vpc.vpc1.id
  associate_public_ip_address = true

  tags = {
    Name = " terraform3"
  }

}
