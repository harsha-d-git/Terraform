resource "aws_instance" "my-first-ec2-01" {
    ami = local.my-ami
    instance_type = local.instance_type
    key_name = var.pem-key-file
  
    tags = {
      Name = "terraform-111"
    }
}

terraform {
  backend "s3" {
    bucket = "terraform-aws-cicd-1997"
    key    = "aws/terraform.tfstate"
    region = "ap-south-1"
  }
}

