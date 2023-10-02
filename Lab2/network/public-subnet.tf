resource "aws_subnet" "first-Public" {
  count             = 2
  vpc_id            = aws_vpc.iti-vpc.id
  cidr_block        = var.sub_pub_cidr_list[count.index] #"10.0.1.0/24"
  availability_zone = var.azs[count.index]

  tags = {
    Name = "public_sn"
  }
}
