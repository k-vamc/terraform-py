resource "aws_instance" "fish" {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "one-off(virginia)"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data1.sh")
  tags = {
    name = "EC2-1"
  }
}

resource "aws_instance" "penguin" {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "one-off(virginia)"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet2.id
  associate_public_ip_address = true
  user_data                   = file("data2.sh")
  tags = {
    name = "EC2-2"
  }
}
