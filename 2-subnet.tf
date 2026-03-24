#These are   for  public

resource "aws_subnet" "public-af-south-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "af-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-af-south-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-af-south-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "af-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-af-south-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "public-af-south-1c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.3.0/24"
  availability_zone       = "af-south-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-af-south-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-af-south-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.11.0/24"
  availability_zone = "af-south-1a"

  tags = {
    Name    = "private-af-south-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-af-south-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.12.0/24"
  availability_zone = "af-south-1b"

  tags = {
    Name    = "private-af-south-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private-af-south-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.13.0/24"
  availability_zone = "af-south-1c"

  tags = {
    Name    = "private-af-south-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}