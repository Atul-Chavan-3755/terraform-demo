resource "aws_route_table_association" "route-a" {
  subnet_id             = aws_subnet.pbl1.id
  route_table_id        = aws_route_table.route.id
}


resource "aws_route_table_association" "route-b" {
  subnet_id             = aws_subnet.pbl1.id
  route_table_id        = aws_route_table.route.id
} 
