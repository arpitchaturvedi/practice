terraform {
  required_providers {
    aws = {                                            #provider
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {                      #physical or logical resource
  ami           = "ami-830c94e3"                            #unique id
  instance_type = "t2.micro"                                #unique id

  tags = {
    Name = var.instance_name
  }
}

