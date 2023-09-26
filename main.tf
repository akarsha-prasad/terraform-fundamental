provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
      bucket = "akki-bucket"
}

resource "aws_instance" "demo-ec2" {
      ami = var.ec2-ubuntu-ami
      instance_type = "t2.micro"
      tags = {
          name = "terra-auto-instance"
          }
}
