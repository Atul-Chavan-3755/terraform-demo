resource "aws_lb_target_group_attachment" "attachment1"{
  target_group_arn   = aws_lb_target_group.tg.arn
  target_id          = aws_instance.tf1.id
  port               = 80
  depends_on         = [aws_instance.tf1]
}


resource "aws_lb_target_group_attachment" "attachment2"{
  target_group_arn   = aws_lb_target_group.tg.arn
  target_id          = aws_instance.tf2.id
  port               = 80
  depends_on         = [aws_instance.tf2]
}



resource "aws_lb_listener" "lis"{
  load_balancer_arn  = aws_lb.lb.id
  port               = "80"
  protocol           = "HTTP"
  default_action{
    target_group_arn = "${aws_lb_target_group.tg.id}"
    type  = "forward"
}
}

