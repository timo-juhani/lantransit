# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Creates VLANs on individual IOS-XE switches.

terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
      version = "0.5.1"
    }
  }
}

resource "iosxe_vlan" "vlan" {
  vlan_id                 = var.vlan_id
  name                    = var.vlan_name
  shutdown                = false
}