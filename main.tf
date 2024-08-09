provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-0ee3e5d4a5112ce6a"
  instance_type = "t2.micro"
  count = var.core_count

  tags = {
    name = "ExampleInstance"
  }
}