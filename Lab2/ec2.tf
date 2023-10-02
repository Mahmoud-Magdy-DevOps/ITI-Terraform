resource "aws_instance" "bastion_vm" {
  ami                         = var.ami_id        #"ami-053b0d53c279acc90"
  instance_type               = var.instance_type #"t2.micro"
  subnet_id                   = module.mynetwork.public_sn[0].id
  vpc_security_group_ids      = [aws_security_group.public-sec.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.public_key-pair.key_name

  provisioner "local-exec" {
    command = "echo ${self.public_ip} "
  }

  tags = {
    Name = "BastionVm"
  }
}

resource "aws_instance" "Application" {

  ami                    = var.ami_id        #"ami-053b0d53c279acc90"
  instance_type          = var.instance_type #"t2.micro"
  subnet_id              = module.mynetwork.private_sn[0].id
  vpc_security_group_ids = [aws_security_group.private-sec.id]
  key_name               = aws_key_pair.public_key-pair.key_name
  tags = {
    Name = "Application"
  }

}
