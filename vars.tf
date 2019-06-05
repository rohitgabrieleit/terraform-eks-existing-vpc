
# variable "AWS_ACCESS_KEY" {}
# variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "ap-southeast-2"
}

variable "AMIS" {
    type = "map"
    default = {
        ap-southeast-2 = "ami-0065540df76a93885"
    }
}

# variable "PATH_TO_PRIVATE_KEY" {
#   default = "C:\\Users\\RohitGabriel\\Documents\\terraform-assets\\mykey"
# }

# variable "PATH_TO_PUBLIC_KEY" {
#   default = "C:\\Users\\RohitGabriel\\Documents\\terraform-assets\\mykey.pub"
# }

variable "cluster-name1" {
  default = "eit-ekscluster-1"
  type    = string
}

variable "cluster-name2" {
  default = "eit-ekscluster-2"
  type    = string
}