provider "aws" {
    # access_key = "${var.AWS_ACCESS_KEY}"
    # secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

data "aws_subnet_ids" "private" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id
}