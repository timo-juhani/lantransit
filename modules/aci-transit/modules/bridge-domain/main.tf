# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: BD provisioning for ACI. BDs are provisioned on their
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

resource "aci_bridge_domain" "bridge-domain" {
  tenant_dn          = var.tenant_id
  relation_fv_rs_ctx = var.vrf_id
  name               = var.bridge_domain_name
}