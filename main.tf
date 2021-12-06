#vpc

resource "aws_vpc" "project11-vpc" {
  cidr_block       = var.project11-vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "var.project11-vpc-nametag"
  }
}

#public-subnets

resource "aws_subnet" "project11-pub-sub1" {
  vpc_id     = aws_vpc.project11-vpc.id
  cidr_block = var.project11-pub-sub1-cidr
  availability_zone = "eu-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "var.project11-pub-sub1nametag"
  }
}

resource "aws_subnet" "project11-pub-sub2" {
  vpc_id     = aws_vpc.project11-vpc.id
  cidr_block = var.project11-pub-sub2-cidr
  availability_zone = "eu-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "var.project11-pub-sub2nametag"
  }
}

#private-subnets

resource "aws_subnet" "project11-private-sub1" {
  vpc_id     = aws_vpc.project11-vpc.id
  cidr_block = var.project11-private-sub1-cidr
  availability_zone = "eu-west-2a"
  tags = {
    Name = "var.project11-private-sub1nametag"
  }
}

resource "aws_subnet" "project11-private-sub2" {
  vpc_id     = aws_vpc.project11-vpc.id
  cidr_block = var.project11-private-sub2-cidr
  availability_zone = "eu-west-2b"
  tags = {
    Name = "var.project11-private-sub2nametag"
  }
}



#internet gateway

resource "aws_internet_gateway" "project11-igw" {
  vpc_id = aws_vpc.project11-vpc.id

  tags = {
    Name = var.project11-igw-name-tag
  }
}

#route

resource "aws_route" "project11-route" {
  route_table_id = aws_route_table.project11-pub-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id     = aws_internet_gateway.project11-igw.id
}


#public rout table

resource "aws_route_table" "project11-pub-rt" {
  vpc_id = aws_vpc.project11-vpc.id

  route = []

  tags = {
    Name = "var.project11-pub-rtname-tag"
  }
}

#private route table

resource "aws_route_table" "project11-private-rt" {
  vpc_id = aws_vpc.project11-vpc.id

  route = []

  tags = {
    Name = "var.project11-private-rtname-tag"
  }
}

#public route table association subnet

resource "aws_route_table_association" "project11-pubrt-asso1" {
  subnet_id      = aws_subnet.project11-pub-sub1.id
  route_table_id = aws_route_table.project11-pub-rt.id
}

resource "aws_route_table_association" "project11-pubrt-asso2" {
  subnet_id      = aws_subnet.project11-pub-sub2.id
  route_table_id = aws_route_table.project11-pub-rt.id
}


#private route table asocciation subnet

resource "aws_route_table_association" "project11-private-rt-asso1" {
  subnet_id      = aws_subnet.project11-private-sub1.id
  route_table_id = aws_route_table.project11-private-rt.id
}

resource "aws_route_table_association" "project11-private-rt-asso2" {
  subnet_id      = aws_subnet.project11-private-sub2.id
  route_table_id = aws_route_table.project11-private-rt.id
}