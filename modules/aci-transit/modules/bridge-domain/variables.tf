# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for bridge domain.

variable "tenant_id" {
  type        = string
  description = "The ID of the tenant"
}

variable "vrf_id" {
  type        = string
  description = "The ID of the VRF"
}

variable "bridge_domain_name" {
  type        = string
  description = "The name of the bridge domain"
}