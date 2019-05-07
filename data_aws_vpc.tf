data "aws_vpc" "requester" {
  provider = "aws.requester"

  filter {
    name   = "tag:Name"
    values = ["${upper(var.requester_account_alias)}*"]
  }
}

data "aws_vpc" "accepter" {
  provider = "aws.accepter"

  filter {
    name   = "tag:Name"
    values = ["${upper(var.accepter_account_alias)}*"]
  }
}
