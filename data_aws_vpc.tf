data "aws_vpc" "requester" {
  provider = "aws.requester"

  filter {
    name   = "${var.vpc_filter_tag_name}"
    values = ["VPC"]
  }
}

data "aws_vpc" "accepter" {
  provider = "aws.accepter"

  filter {
    name   = "${var.vpc_filter_tag_name}"
    values = ["VPC"]
  }
}