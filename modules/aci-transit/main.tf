# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Creates L2 transit network across ACI fabric.

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

provider "aci" {
  url      = var.aci_url
  username = var.aci_username
  password = var.aci_password
  insecure = true
}

module "tenant" {
  source = "./modules/tenant"
  tenant_name = "TEST"
  tenant_description = "TEST"
  vrf_name = "TEST"
  ap_name = "TEST"
}