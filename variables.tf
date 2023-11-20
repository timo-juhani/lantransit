# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for ACI login. Values as stored as env variables.

variable "aci_url" {
  type        = string
  description = "The URL of APIC"
}

variable "aci_username" {
  type        = string
  description = "Username of the admin user"
}

variable "aci_password" {
  type        = string
  description = "Password of the admin user"
}

variable "physical_domain_name" {
  type        = string
}

variable "tenant_name" {
  type        = string
}

variable "tenant_description" {
  type        = string 
} 

variable "vrf_name" {
  type        = string
}

variable "ap_name" {
  type        = string
}

variable "bridge_domain_name" {
  type        = string
}

variable "epg_name" {
  type        = string
}

variable "vlan" {
  type        = string
} 

variable "access_interface_paths" {
  type    = list(string)
}

variable "trunk_interface_paths" {
  type    = list(string)
}