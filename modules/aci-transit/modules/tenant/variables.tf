# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for tenant.

variable "tenant_name" {
  type        = string
  description = "The name of the tenant"
}

variable "tenant_description" {
  type        = string
  description = "The description for the tenant"
}

variable "vrf_name" {
  type        = string
  description = "The name of the VRF attached to the tenant"
}

variable "ap_name" {
  type        = string
  description = "The name of the AP attached to the tenant"
}