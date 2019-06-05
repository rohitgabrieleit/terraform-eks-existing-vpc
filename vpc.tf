resource "aws_vpc" "intercity-vpc-network-dev-VPC" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    "Name" = "10.0.0.0/16 - TourCatalog-dev"
    "kubernetes.io/cluster/EKS-K5mKnyAyHEvS" =  "shared"
    "kubernetes.io/cluster/EKS-Q9qiQ4WHlQe9" = "shared"
    "kubernetes.io/cluster/eit-ekscluster-1" = "shared"
  }
}

