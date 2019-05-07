resource "aws_vpc_peering_connection" "peer" {
  provider      = "aws.requester"
  vpc_id        = "${data.aws_vpc.requester.id}"
  peer_vpc_id   = "${data.aws_vpc.accepter.id}"
  peer_owner_id = "${data.aws_caller_identity.peer.account_id}"
  auto_accept   = false
  peer_region = "${var.peer_owner_region}"

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = "${merge(var.common_tags, map("Side" ,"Requester"), map("Peered Account", "${var.accepter_account_alias}"))}"
  lifecycle {
    ignore_changes = [ "requester"]
  }
}
