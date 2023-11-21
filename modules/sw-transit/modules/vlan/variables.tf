# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for VLAN module.

variable "vlan_name" {
  type        = string
  description = "Database description for the VLAN"
} 

variable "vlan_id" {
  type        = number
  description = "The VLAN ID"
}
