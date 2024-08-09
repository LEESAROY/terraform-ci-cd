provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0211c3296405e1021"
  instance_type = "t2.micro"
  count = var.core_count

  tags = {
    name = "ExampleInstance"
  }
}