resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.0.0/18"

  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    "Name"                      = "public-us-east-1a"
    "Kubernetes.io/cluster/eks" = "shared"
    "kubernates.io/role/elb"    = 1
  }

}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.64.0/18"

  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true


  tags = {
    "Name"                      = "public-us-east-1b"
    "Kubernetes.io/cluster/eks" = "shared"
    "kubernates.io/role/elb"    = 1
  }

}
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.128.0/18"

  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    "Name"                      = "private-us-east-1a"
    "Kubernetes.io/cluster/eks" = "shared"
    "kubernates.io/role/elb"    = 1
  }

}
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.192.0/18"

  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true


  tags = {
    "Name"                      = "private-us-east-1b"
    "Kubernetes.io/cluster/eks" = "shared"
    "kubernates.io/role/elb"    = 1
  }

}