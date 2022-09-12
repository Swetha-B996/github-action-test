resource "aws_vpc" "test-vpc" {
    cidr_block       = "192.68.0.0/16"
    enable_dns_hostnames = true
     enable_dns_support   = true

     tags = {
    Name        = "test-vpc"
    Environment = var.app_environment
}
}
resource "aws_subnet" "test-subnet" {
  vpc_id                  = aws_vpc.test-vpc.id
  cidr_block              = "192.68.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name        = "sample-subnet"
    Environment = var.app_environment
  }
}
