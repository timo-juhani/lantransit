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