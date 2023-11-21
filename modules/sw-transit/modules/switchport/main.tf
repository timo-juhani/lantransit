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

resource "iosxe_interface_switchport" "access_port" {
  # If access port deploy this resource
  count = var.is_trunk == false ? 1 : 0
  type                    = var.port_type
  name                    = var.port_number
  mode_access             = true
  mode_trunk              = false
  access_vlan             = var.vlan_id
}

resource "iosxe_interface_switchport" "trunk_port" {
  # If trunk port deploy this resource
  count = var.is_trunk == true ? 1 : 0
  type                    = var.port_type
  name                    = var.port_number
  mode_access             = false
  mode_trunk              = true
}