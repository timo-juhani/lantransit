# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Tenant provisioning for ACI. The tenant structure
# contains one VRF and one AP which should be suitable as fabric
# provides only L2 transit between switch ports. 

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

resource "aci_tenant" "tenant" {
  name        = var.tenant_name
  description = var.tenant_description
}

resource "aci_vrf" "vrf" {
  tenant_dn = aci_tenant.tenant.id
  name      = var.vrf_name
}

resource "aci_application_profile" "ap" {
  tenant_dn = aci_tenant.tenant.id
  name      = var.ap_name
}