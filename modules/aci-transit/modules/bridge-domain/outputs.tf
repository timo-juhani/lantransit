# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Output definitions for bridge domain.

output "bridge_domain_id" {
  value = aci_bridge_domain.bridge-domain.id
}