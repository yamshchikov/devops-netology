provider "aws" {
  region = "eu-north-1"
}

data "aws_ami" "ubuntu_image" {
  most_recent = true
  owners      = [ "099720109477" ]
  filter {
    name   = "name"
    values = [ "*20.04*" ]
  }
  filter {
    name   = "architecture"
    values = [ "x86_64" ]
  }
}

data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/27"
}

resource "aws_instance" "test" {
  ami                  = data.aws_ami.ubuntu_image.id
  instance_type        = "t3.micro"
  private_ip           = "10.0.1.10"
  subnet_id            = aws_subnet.main_subnet.id
  monitoring           = true
  cpu_core_count       = 1
  cpu_threads_per_core = 2
  instance_initiated_shutdown_behavior = "stop"
  credit_specification {
    cpu_credits = "standard"
  }
}