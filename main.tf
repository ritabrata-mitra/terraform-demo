resource "aws_instance" "my_instance" {
  ami           = "ami-0bb661687d1decf72"
  instance_type = "t3.micro"
  tags = {
    Name = "my-ec2-instance"
  }
}
