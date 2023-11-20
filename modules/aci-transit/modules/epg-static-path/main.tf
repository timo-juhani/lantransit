# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Adding a static path to a EPG

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

# Mode options with traditional configuration examples: 

# Option 1 - untagged
# interface eth1/1
#  switchport mode access
#  switchport access vlan 10 

# Option 2 - trunk / regular
# interface eth1/1
#  switchport mode trunk
#  switchport trunk allowed vlan 10

resource "aci_epg_to_static_path" "static-path-untagged" {
  # If the static binding mode is set to untagged deploy this resource
  count = var.mode == "untagged" ? 1 : 0

  application_epg_dn    = var.epg_id
  tdn                   = var.interface_path
  encap                 = var.vlan
  mode                  = var.mode
}

resource "aci_epg_to_static_path" "static-path-trunk" {
  # If the static binding mode is set to regular deploy this resource
  count = var.mode == "regular" ? 1 : 0

  application_epg_dn    = var.epg_id
  tdn                   = var.interface_path
  encap                 = var.vlan
  mode                  = var.mode
}