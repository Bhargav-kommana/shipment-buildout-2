provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "shipment_server" {
  ami           = "ami-0d176f79571d18a8f"   # Amazon Linux 2023 Free Tier Eligible
  instance_type = "t3.micro"
  key_name = "mykeypair"

  tags = {
    Name = "shipment-server"
  }
}


