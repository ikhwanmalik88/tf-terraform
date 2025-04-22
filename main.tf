terraform {
  required_providers {
    aws={
      source = "hashicorp/aws"
      version= "4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

## Create new EC2 Instance
resource "aws_instance" "HiEC2" {
  ami               = "ami-01938df366ac2d954"
  instance_type     = "t2.micro"

  tags = {
    Name = "EC2Instance"
  }

# Output public IP

output "Instance_public_ip" {
  value = aws_eip.HiEC2.public_ip
}

