# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Creates L2 transit network across ACI fabric and
# extends that beyond leaf ports that are connected to non-ACI 
# switches.

terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "2.11.1"
    }
  }
}

# PHASE 1: ACI TRANSIT

provider "aci" {
  url      = var.aci_url
  username = var.aci_username
  password = var.aci_password
  insecure = true
}

data "aci_physical_domain" "physical-domain" {
  name  = var.physical_domain_name
}

module "tenant" {
  source                  = "./modules/aci-transit/modules/tenant"
  tenant_name             = var.tenant_name
  tenant_description      = var.tenant_description
  vrf_name                = var.vrf_name
  ap_name                 = var.ap_name
}

module "bridge-domain" {
  source                  = "./modules/aci-transit/modules/bridge-domain"
  tenant_id               = module.tenant.tenant_id
  vrf_id                  = module.tenant.vrf_id
  bridge_domain_name      = var.bridge_domain_name
}

module "epg" {
  source                  = "./modules/aci-transit/modules/epg"
  application_profile_id  = module.tenant.ap_id
  bridge_domain_id        = module.bridge-domain.bridge_domain_id
  epg_name                = var.epg_name
}

module "egp-domain" {
  source                  = "./modules/aci-transit/modules/epg-domain"
  epg_id                  = module.epg.epg_id
  physical_domain_id      = data.aci_physical_domain.physical-domain.id
}

module "epg-static-path-access-ports" {
  source                  = "./modules/aci-transit/modules/epg-static-path"
  epg_id                  = module.epg.epg_id
  vlan                    = var.vlan
  mode                    = "untagged"
  for_each                = toset(var.access_interface_paths)
  interface_path          = each.value
}

module "epg-static-path-trunk-ports" {
  source                  = "./modules/aci-transit/modules/epg-static-path"
  epg_id                  = module.epg.epg_id
  vlan                    = var.vlan
  mode                    = "regular"
  for_each                = toset(var.trunk_interface_paths)
  interface_path          = each.value
}

# PHASE 2: LAN SW TRANSIT