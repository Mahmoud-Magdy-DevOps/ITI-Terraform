resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.first-Public[0].id

  tags = {
    Name = "NAT gw"
  }
}
