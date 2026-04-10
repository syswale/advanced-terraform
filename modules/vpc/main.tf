# modules/vpc/main.tf

resource "aws_vpc" "this" {
  cidr_block		= var.cidr_block
  enable_dns_hostnames  = true

  tags = {
     Name = var.vpc_name
   }
 }


resource "aws_subnet" "public_1" {
  vpc_id		  = aws_vpc.this.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = var.az_1
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-1"
  }
 }


resource "aws_subnet" "public_2" {
  vpc_id		  = aws_vpc.this.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = var.az_2
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-2"
  }
 }

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.vpc_name}-igw" 
   }
  }
