resource "aws_vpc_peering_connection_options" "requester" {
  provider                  = "aws.requester"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}

resource "aws_vpc_peering_connection_options" "accepter" {
  provider                  = "aws.accepter"
  vpc_peering_connection_id = "${aws_vpc_peering_connection_accepter.peer.id}"

  accepter {
    allow_remote_vpc_dns_resolution = true
  }
}
