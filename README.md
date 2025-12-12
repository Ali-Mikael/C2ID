## Self-hosted **CI/CD platform** 
Built in the cloud using the AWS provider.     
Crafted and managed utilizing *Terraform*.      

## How to set it up?
**Clone repo** ->    
**Navigate** to `/terraform` directory ->     
**Initialize** `$ terraform init` ->     
**Create infrastructure** `$ terraform apply` -> **Enjoy!**        
    
### Note:
Tweak the configs to suit your own needs (networking, security, DB options etc..)     
IaC files provide a robust setup with built-in default values, if nothing else, atleast the SSH.pub/key/path you need to change yourself, if you want to SSH into bastion host or other resources.
