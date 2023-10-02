resource "aws_route_table" "second_rt" {

  vpc_id = aws_vpc.iti-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {

    Name = "2nd Route Table"

  }

}

#Private Route
resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.iti-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private_table"
  }

}

resource "aws_route_table_association" "public_subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.first-Public[count.index].id
  route_table_id = aws_route_table.second_rt.id
}

resource "aws_route_table_association" "private-subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.first-Private[count.index].id
  route_table_id = aws_route_table.private-route.id
}
