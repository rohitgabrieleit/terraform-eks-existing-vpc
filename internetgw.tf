resource "aws_internet_gateway" "intercity-vpc-network-dev-internetgw" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id

  tags = {
    Name = "TourCatalog-dev-10.0.0.0/16"
  }
}