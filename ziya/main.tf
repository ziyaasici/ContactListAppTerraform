terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "projeVPC" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "projeVPC"
  }
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.projeVPC.id
  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "Public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.projeVPC.id
  cidr_block = "10.0.20.0/24"

  tags = {
    Name = "Public2"
  }
}