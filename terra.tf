provider "aws" {
region = "us-east-1"
access_key = "AKIASXQH27TOWCQSEXPV"
secret_key = "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"

}


resource "aws_vpc" "bam" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "bam"
  }
}


resource "aws_internet_gateway" "bam-igw" {
  vpc_id = aws_vpc.bam.id

  tags = {
    Name = "bam-igw"
  }
}