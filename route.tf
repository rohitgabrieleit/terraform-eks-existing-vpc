# route tables
resource "aws_route_table" "intercity-vpc-network-dev-RouteTableAPublic" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intercity-vpc-network-dev-internetgw.id
  }

  tags = {
    Name = "TourCatalog-dev-A-Public"
  }
}

resource "aws_route_table" "intercity-vpc-network-dev-RouteTableBPublic" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intercity-vpc-network-dev-internetgw.id
  }

  tags = {
    Name = "TourCatalog-dev-B-Public"
  }
}

resource "aws_route_table" "intercity-vpc-network-dev-RouteTableAPrivate" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id

  tags = {
    Name = "TourCatalog-dev-A-Private"
  }
}

resource "aws_route_table" "intercity-vpc-network-dev-RouteTableBPrivate" {
  vpc_id = aws_vpc.intercity-vpc-network-dev-VPC.id

  tags = {
    Name = "TourCatalog-dev-B-Private"
  }
}
# route associations 
# resource "aws_route_table_association" "intercity-vpc-network-dev-RouteTableAPublic" {
#   subnet_id      = aws_subnet.intercity-vpc-network-dev-SubnetAPublic.id
#   route_table_id = aws_route_table.intercity-vpc-network-dev-RouteTableAPublic.id
# }

