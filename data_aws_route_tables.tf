data "aws_route_tables" "requester" {
  provider = "aws.requester"
  vpc_id   = "${data.aws_vpc.requester.id}"

  filter {
    name   = "${var.requester_route_table_filter_tag_name}"
    values = ["PrivateRouteTable*"]
  }
}

data "aws_route_tables" "accepter" {
  provider = "aws.accepter"
  vpc_id   = "${data.aws_vpc.accepter.id}"

  filter {
    name   = "${var.accepter_route_table_filter_tag_name}"
    values = ["PrivateRouteTable*"]
  }
}
