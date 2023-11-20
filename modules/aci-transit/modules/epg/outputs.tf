# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Output definitions for EPG.

output "epg_id" {
  value = aci_application_epg.epg.id
}