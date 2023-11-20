# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Adding an EGP to a physical domain.

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

resource "aci_epg_to_domain" "egp-domain" {
  application_epg_dn    = var.epg_id
  tdn                   = var.physical_domain_id
}

