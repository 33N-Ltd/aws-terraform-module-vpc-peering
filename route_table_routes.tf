resource "aws_route" "requester" {
  provider                  = "aws.requester"
  count                     = "${length(data.aws_route_tables.requester.ids)}"
  route_table_id            = "${data.aws_route_tables.requester.ids[count.index]}"
  destination_cidr_block    = "${data.aws_vpc.accepter.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"
}

resource "aws_route" "accepter" {
  provider                  = "aws.accepter"
  count                     = "${length(data.aws_route_tables.accepter.ids)}"
  route_table_id            = "${data.aws_route_tables.accepter.ids[count.index]}"
  destination_cidr_block    = "${data.aws_vpc.requester.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"
}

resource "aws_route" "requester_transit" {
  provider                  = "aws.requester"
  count                     = "${length(data.aws_route_tables.requester_transit.ids)}"
  route_table_id            = "${data.aws_route_tables.requester_transit.ids[count.index]}"
  destination_cidr_block    = "${data.aws_vpc.accepter.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"
}

resource "aws_route" "accepter_transit" {
  provider                  = "aws.accepter"
  count                     = "${length(data.aws_route_tables.accepter_transit.ids)}"
  route_table_id            = "${data.aws_route_tables.accepter_transit.ids[count.index]}"
  destination_cidr_block    = "${data.aws_vpc.requester.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"
}
