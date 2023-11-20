# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for EPG static path.

variable "epg_id" {
  type        = string
  description = "The ID of the EPG"
}

variable "vlan" {
  type        = string
  description = "The VLAN ID for the static path"
}

variable "interface_path" {
  type        = string
  description = "The topolody URI path for the interface or port-channel"
}

variable "mode" {
  type        = string
  description = "The mode of the static path (access aka untagged, regular aka trunk)"
}