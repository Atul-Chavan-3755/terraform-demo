resource "aws_lb" "lb" {
  internal           = false
  load_balancer_type = " application "
  subnets            = [ aws_subnet.pbl1.id , aws_subnet.pbl2.id ]

  tags = {
    Name = " terraform-lb "
  }

}



resource "aws_lb_target_group" "tg" {
  name      = " tg"
  port      = 80
  protocol  = " HTTP "
  vpc_id    = aws_vpc.vpc1.id

  tags = {
    Name = " terraform-tg "
  }

}
