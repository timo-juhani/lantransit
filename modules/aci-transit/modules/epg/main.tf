# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: EPG provisioning for ACI. EPGs are provisioned on their
# own to allow flexibility and modularity to create different kind of 
# designs later on. 

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

resource "aci_application_epg" "epg" {
  application_profile_dn = var.application_profile_id
  relation_fv_rs_bd      = var.bridge_domain_id
  name                   = var.epg_name
}