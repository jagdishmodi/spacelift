
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
  ami           = "ami-07860a2d7eb515d9a" # Amazon Linux 2 AMI (update as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
    env = "prod"
  }
}

output "ec2_public_ip" {
value = aws_instance.example.public_ip
}

