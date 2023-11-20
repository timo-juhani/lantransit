# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for EPG domain.

variable "epg_id" {
  type        = string
  description = "The ID of the EPG"
}

variable "physical_domain_id" {
  type        = string
  description = "The ID of the physical domain"
}