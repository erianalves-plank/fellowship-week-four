provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myec2" {
    ami = "ami-0578f2b35d0328762"
    instance_type = "t2.micro"

    tags = {
        Name = "Web Server V2"
    }
}

module "dbserver" {
  source = "./db"
}