terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
      version = "3.6.0"
    }
  }
}

provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "sea"
}

locals {
  zone    = "alakhani.net"
}

data "akamai_contract" "akacontract" {
  group_name = var.groupName

}

data "akamai_group" "akagroup" {
  group_name  = var.groupName
  contract_id = data.akamai_contract.akacontract.id
}

