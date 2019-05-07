# variable peer_owner_id {}
variable peer_owner_region { default = "eu-west-2"}

variable accepter_allow_remote_vpc_dns_resolution { default = true }
variable requester_allow_remote_vpc_dns_resolution { default = true }
variable accepter_allow_classic_link_to_remote_vpc { default = true }
variable requester_allow_classic_link_to_remote_vpc { default = true }

variable "common_tags" {
  type = "map"
}

variable "requester_account_alias" {
  default = ""
}

variable "accepter_account_alias" {
  default = ""
}
