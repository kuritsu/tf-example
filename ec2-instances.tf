data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = var.subnet_ids[count.index % 2]
  vpc_security_group_ids = ["sg-01bad3f16778cb6c9"]
  tags = {
    Name = "web${count.index + 1}"
  }
  user_data = <<EOD
#!/bin/bash
apt-get update -y
apt-get install nginx -y
EOD
}
