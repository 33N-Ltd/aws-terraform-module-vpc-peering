resource "aws_vpc_peering_connection_options" "requester" {
  provider                  = "aws.requester"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"

  requester {
    allow_classic_link_to_remote_vpc = "${var.requester_allow_classic_link_to_remote_vpc}"
    allow_remote_vpc_dns_resolution = "${var.requester_allow_remote_vpc_dns_resolution}"
  }
}

resource "aws_vpc_peering_connection_options" "accepter" {
  provider                  = "aws.accepter"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"

  accepter {
    allow_classic_link_to_remote_vpc = "${var.accepter_allow_classic_link_to_remote_vpc}"
    allow_remote_vpc_dns_resolution = "${var.accepter_allow_remote_vpc_dns_resolution}"
  }
}
