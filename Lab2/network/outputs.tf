output "public_sn" {
  value = aws_subnet.first-Public
}

output "private_sn" {
  value = aws_subnet.first-Private
}

output "vpc_id" {
  value = aws_vpc.iti-vpc.id
}

output "cidr_block" {
  value = aws_vpc.iti-vpc.cidr_block

}
