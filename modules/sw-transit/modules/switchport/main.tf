# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Configures switchports on individual IOS-XE switches.

terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
      version = "0.5.1"
    }
  }
}

resource "iosxe_interface_switchport" "port" {
  type                    = var.port_type
  for_each                = toset(var.port_numbers)
  name                    = each.value
  mode_access             = true
  mode_trunk              = false
  access_vlan             = var.vlan_id
}