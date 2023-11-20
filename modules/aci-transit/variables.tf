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

# Example topology paths:
# Access (untagged):    topology/pod-1/paths-101/pathep-[eth1/3]
# VPC trunk (regular):  topology/pod-1/protpaths-101-102/pathep-[VPC-TEST]

variable "access_interface_paths" {
  type    = list(string)
  default = [
    "topology/pod-1/paths-101/pathep-[eth1/2]", 
    "topology/pod-1/paths-101/pathep-[eth1/3]"
    ]
}

variable "trunk_interface_paths" {
  type    = list(string)
  default = [
    "topology/pod-1/protpaths-101-102/pathep-[VPC-TEST]"
    ]
}