
resource "aws_subnet" "intercity-vpc-network-dev-SubnetAPublic" {
  vpc_id                  = aws_vpc.intercity-vpc-network-dev-VPC.id
  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-2a"

tags                            = {
          "Name"                                   = "TourCatalog-dev-A-Public",
          "Reach"                                  = "public",
          "kubernetes.io/cluster/EKS-K5mKnyAyHEvS" = "shared",
          "kubernetes.io/cluster/EKS-Q9qiQ4WHlQe9" = "shared",
          "kubernetes.io/cluster/eit-ekscluster-1" = "shared" 
        }
}

resource "aws_subnet" "intercity-vpc-network-dev-SubnetBPublic" {
  vpc_id                  = aws_vpc.intercity-vpc-network-dev-VPC.id
  cidr_block              = "10.0.32.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-2b"

tags                            = {
          "Name"                                   = "TourCatalog-dev-B-Public",
          "Reach"                                  = "public",
          "kubernetes.io/cluster/EKS-K5mKnyAyHEvS" = "shared",
          "kubernetes.io/cluster/EKS-Q9qiQ4WHlQe9" = "shared",
          "kubernetes.io/cluster/eit-ekscluster-1" = "shared" 
        }
}

resource "aws_subnet" "intercity-vpc-network-dev-SubnetAPrivate" {
  vpc_id                  = aws_vpc.intercity-vpc-network-dev-VPC.id
  cidr_block              = "10.0.16.0/20"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-2a"

tags                            = {
          "Name"                                   = "TourCatalog-dev-A-Private",
          "Reach"                                  = "private",
          "kubernetes.io/cluster/EKS-K5mKnyAyHEvS" = "shared",
          "kubernetes.io/cluster/EKS-Q9qiQ4WHlQe9" = "shared",
          "kubernetes.io/role/internal-elb"        = "1"
        }
}

resource "aws_subnet" "intercity-vpc-network-dev-SubnetBPrivate" {
  vpc_id                  = aws_vpc.intercity-vpc-network-dev-VPC.id
  cidr_block              = "10.0.48.0/20"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-2b"

tags                            = {
          "Name"                                   = "TourCatalog-dev-B-Private",
          "Reach"                                  = "private",
          "kubernetes.io/cluster/EKS-K5mKnyAyHEvS" = "shared",
          "kubernetes.io/cluster/EKS-Q9qiQ4WHlQe9" = "shared",
          "kubernetes.io/role/internal-elb"        = "1"
        }
}