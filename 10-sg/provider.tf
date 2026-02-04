terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "dev-remotestate1"
    key = "roboshop-dev-sg"
    region = "us-east-1"
    use_lockfile= true 
    encrypt = true
  }
}
provider "aws" {
  region = "us-east-1"
}