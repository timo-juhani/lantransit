# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Description: Creates L2 transit network across ACI fabric and
# extends that beyond leaf ports that are connected to non-ACI 
# switches.

module "aci-transit" {
  source = "./modules/aci-transit"
  aci_url = var.aci_url
  aci_username = var.aci_username
  aci_password = var.aci_password
}