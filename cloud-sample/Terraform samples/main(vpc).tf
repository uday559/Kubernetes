provider "aws" {
  region = var.region
  access_key = "AKIA2WU4757HYKZLUGEY"
  secret_key = "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"
}

resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "this" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"
}

data "aws_ssm_parameter" "this" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}