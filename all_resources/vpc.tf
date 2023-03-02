resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
  tags                 = var.vpc_tag

}


resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az
  tags              = var.vpc_tag

}

#Creating internet Gateway
resource "aws_internet_gateway" "pitambar-gateway" {
  vpc_id =aws_vpc.vpc.id
  tags = {
    Name    = "pitambar-subnet"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }
}


# This is my Route
resource "aws_route_table" "pitambar-route" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pitambar-gateway.id
  }

  tags = {
    Name    = "pitambar-route"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }
}

#for subnet-1
resource "aws_route_table_association" "pitambar-crta-public-subnet-1" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.pitambar-route.id
}


# Creating aws Security Group
resource "aws_security_group" "pitambar-security" {
  vpc_id = aws_vpc.vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "pitambar-security"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }
}
