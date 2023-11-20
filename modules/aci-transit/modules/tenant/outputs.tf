# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Output definitions for tenant that are used to provisioning other
# policy objects.

output "tenant_id" {
  value = aci_tenant.tenant.id
}

output "vrf_id" {
  value = aci_vrf.vrf.id
}

output "ap_id" {
  value = aci_application_profile.ap.id
}