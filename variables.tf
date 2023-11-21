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
  description = "The name of the physical domain"
}

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
  description = "The name of the VRF"
}

variable "ap_name" {
  type        = string
  description = "The name of the application profile"
}

variable "bridge_domain_name" {
  type        = string
  description = "The name of the bridge domain"
}

variable "epg_name" {
  type        = string
  description = "The name of the EPG"
}

variable "vlan" {
  type        = string
  description = "Vlan ID in ACI format (e.g. vlan-100)"
} 

variable "access_interface_paths" {
  type        = list(string)
  description = "Access interface topology paths (list)"
}

variable "trunk_interface_paths" {
  type        = list(string)
  description = "VPC trunk interface topology paths (list)"
}

# Login variables for switch defined in .bashrc as env variables.

variable "sw_url" {
  type        = string
  description = "The URL of the switch's RESTCONF interface"
}

variable "sw_username" {
  type        = string
  description = "The username of the switch's RESTCONF interface"
}

variable "sw_password" {
  type        = string
  description = "The password of the switch's RESTCONF interface"
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
  description = "The uplink port numbers e.g. 1/1/1 (list)"
}

variable "dl_port_type" {
  type        = string
  description = "The type of downlink ports e.g. GigabitEthernet"
}

variable "dl_port_numbers" {
  type        = list(string)
  description = "The downlink port numbers e.g. 1/1/1, 1/1/2 (list)"
}

