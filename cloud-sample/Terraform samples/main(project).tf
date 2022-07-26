variable "main_region" {
  type    = string
  default = "us-east-1"
}

provider "aws" {
  region = var.main_region
  access_key = "AKIA2WU4757HYKZLUGEY"
  secret_key = "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"
}

module "vpc" {
  source = "./modules/vpc"
  region = var.main_region
}

resource "aws_instance" "my-instance" {
  ami           = module.vpc.ami_id
  subnet_id     = module.vpc.subnet_id
  instance_type = "t2.micro"
}