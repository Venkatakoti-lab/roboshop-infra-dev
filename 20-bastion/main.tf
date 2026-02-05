resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ami_id.id
  instance_type = "t3.micro"
  vpc_security_group_ids = local.bastion_sg_id
  subnet_id= local.public_subnet_ids

  tags = {
    Name = "HelloWorld"
  }
}