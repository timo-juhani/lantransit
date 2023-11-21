# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for Switchport module.

variable "vlan_id" {
  type        = number
  description = "The VLAN ID"
}

variable "port_type" {
  type        = string
  description = "The type of ports e.g. GigabitEthernet"
}

variable "port_number" {
  type        = string
  description = "The port numbers e.g. 1/1/1"
}

variable "is_trunk" {
  type        = bool
  description = "Is trunk boolean"
}