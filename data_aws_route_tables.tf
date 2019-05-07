data "aws_route_tables" "requester" {
  provider = "aws.requester"
  vpc_id   = "${data.aws_vpc.requester.id}"

  filter {
    name   = "tag:Type"
    values = ["PrivateRouteTable*"]
  }
}

data "aws_route_tables" "requester_transit" {
  provider = "aws.requester"
  vpc_id   = "${data.aws_vpc.requester.id}"

  filter {
    name   = "tag:Type"
    values = ["TransitRouteTable*"]
  }
}

data "aws_route_tables" "accepter" {
  provider = "aws.accepter"
  vpc_id   = "${data.aws_vpc.accepter.id}"

  filter {
    name   = "tag:Type"
    values = ["PrivateRouteTable*"]
  }
}

data "aws_route_tables" "accepter_transit" {
  provider = "aws.accepter"
  vpc_id   = "${data.aws_vpc.accepter.id}"

  filter {
    name   = "tag:Type"
    values = ["TransitRouteTable*"]
  }
}
