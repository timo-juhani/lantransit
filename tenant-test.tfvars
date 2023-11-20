# Author: Timo-Juhani Karjalainen, tkarjala@cisco.com, Cisco CX
# Variable definitions for the LANTRANSIT network. 
# Change the variables (and store) variable files for each tenant.

# ACI
physical_domain_name        = "TEST"
tenant_name                 = "TEST"
tenant_description          = "TEST"
vrf_name                    = "TEST"
ap_name                     = "TEST"
bridge_domain_name          = "TEST"
epg_name                    = "TEST"
# Sntax example for vlan: vlan-100
vlan                        = "vlan-100"

# Example topology paths:
# Access (untagged):    topology/pod-1/paths-101/pathep-[eth1/3]
# VPC trunk (regular):  topology/pod-1/protpaths-101-102/pathep-[VPC-TEST]

# Access port list
access_interface_paths      = [
                                "topology/pod-1/paths-101/pathep-[eth1/2]", 
                                "topology/pod-1/paths-101/pathep-[eth1/3]"
                            ]
# VPC trunk ports
trunk_interface_paths       = [
                                "topology/pod-1/protpaths-101-102/pathep-[VPC-TEST]"
                            ]

# LAN Switching