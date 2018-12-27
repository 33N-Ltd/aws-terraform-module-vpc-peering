variable peer_owner_id {}
variable route_table_filter_tag_name { default = "tag:aws:cloudformation:logical-id"}
variable vpc_filter_tag_name { default = "tag:aws:cloudformation:logical-id"}

variable "common_tags" {
  type = "map"
}

variable "requester_account_alias" {
  default = ""
}

variable "accepter_account_alias" {
  default = ""
}
