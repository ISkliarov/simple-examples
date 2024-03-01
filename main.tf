provider "aws" {
  region = "eu-central-1"  # Change this to your desired AWS region
}

resource "aws_instance" "web" {
  ami           = var.ami_ubuntu
  key_name      = "id_rsa"
  instance_type = var.instance_type
  availability_zone = "eu-central-1a"
  security_groups = ["default", "web-hosting"]
  count = 1

user_data = file("./docker.sh")

  root_block_device {
     volume_size = 8
     volume_type = "gp2"
  }

  tags = {
    Name = "web-host-${count.index + 1}"
    type = "host"
  }
}