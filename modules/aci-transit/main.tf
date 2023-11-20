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

data "aci_physical_domain" "physical-domain" {
  name  = "TEST"
}

module "tenant" {
  source = "./modules/tenant"
  tenant_name = "TEST"
  tenant_description = "TEST"
  vrf_name = "TEST"
  ap_name = "TEST"
}

module "bridge-domain" {
  source = "./modules/bridge-domain"
  tenant_id = module.tenant.tenant_id
  vrf_id = module.tenant.vrf_id
  bridge_domain_name = "TEST"
}

module "epg" {
  source = "./modules/epg"
  application_profile_id = module.tenant.ap_id
  bridge_domain_id = module.bridge-domain.bridge_domain_id
  epg_name = "TEST"
}

module "egp-domain" {
  source = "./modules/epg-domain"
  epg_id = module.epg.epg_id
  physical_domain_id = data.aci_physical_domain.physical-domain.id
}