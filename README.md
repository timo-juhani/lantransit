# LAN Transit
Creating and destryoing LANs with Terraform, Cisco ACI and Catalyst switches. 

## Setting Up The Environment

Use TF variables to store APIC credentials.

```
# TERRAFORM variables
export TF_VAR_aci_url="https://YOUR_IP"
export TF_VAR_aci_username="YOUR_USERNAME"
export TF_VAR_aci_password="YOUR_PASSWORD"

# Remember to apply the changes
source ~/.bashrch
```