provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "vm" {
  ami           = "ami-065efef2c739d613b"
  subnet_id     = "subnet-028707df27be541f9"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tf-node"
  }
}
