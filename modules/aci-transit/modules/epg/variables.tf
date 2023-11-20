# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for EPG.

variable "application_profile_id" {
  type        = string
  description = "The ID of the application profile"
}

variable "bridge_domain_id" {
  type        = string
  description = "The ID of the bridge domain"
}

variable "epg_name" {
  type        = string
  description = "The name of the EPG"
}