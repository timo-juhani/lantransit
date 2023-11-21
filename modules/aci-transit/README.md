# ACI (L2) Transit

A module to create L2 transit network for a certain VLAN. 

The module works against APIC and doesn't support multi-site capability.

Consists of modules:
- tenant            - creates a tenant with a single AP and VRF
- bridge domain     - creates a bridge domain.
- epg               - creates an EPG.
- epg-domain        - attaches a domain to an EPG.
- epg-static-path   - adds a static path for access and trunk ports.