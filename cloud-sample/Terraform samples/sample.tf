provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2WU4757HYKZLUGEY"
  secret_key = "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"
}
resource "aws_instance" "vm" {
  ami           = "ami-052efd3df9dad4825"
  subnet_id     = "subnet-0a9074b92fa946668"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tf-node"
  }
}