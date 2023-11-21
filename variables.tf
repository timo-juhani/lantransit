# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX

# Login variables for ACI defined in .bashrc as env variables.

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

# ACI network variables defined in .tfvars file per each transit tenant.

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

# Login variables for switch defined in .bashrc as env variables.

variable "sw_url" {
  type        = string
  description = "The URL of the switch's RESTCONF interface."
}

variable "sw_username" {
  type        = string
  description = "The username of the switch's RESTCONF interface."
}

variable "sw_password" {
  type        = string
  description = "The password of the switch's RESTCONF interface."
}

variable "vlan_name" {
  type        = string
  description = "Database description for the VLAN"
} 

variable "vlan_id" {
  type        = number
  description = "The VLAN ID"
}

variable "ul_port_type" {
  type        = string
  description = "The type of uplink ports e.g. GigabitEthernet"
}

variable "ul_port_numbers" {
  type        = list(string)
  description = "The uplink port numbers e.g. 1/1/1."
}

variable "dl_port_type" {
  type        = string
  description = "The type of downlink ports e.g. GigabitEthernet"
}

variable "dl_port_numbers" {
  type        = list(string)
  description = "The downlink port numbers e.g. 1/1/1, 1/1/2."
}

