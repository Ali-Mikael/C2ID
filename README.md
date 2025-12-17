# Self-hosted **CI/CD platform**
Built and managed utilizing *Terraform*.     
Hosted in the AWS cloud.      

## How to set it up?
> This assumes you have an AWS account set up and Terraform installed. If not ->       
> Terraform installation: <https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli>    
> AWS account: <https://aws.amazon.com/account/>    
> The AWS CLI is a good tool to have: <https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html>     
> And lastly remember to either paste your credentials to ~/.aws/credentials or export then as environment variables!      
     
### 1. Clone repository:
```bash
$ git clone depth=1 https://github.com/Ali-Mikael/C2ID.git
```    
### 2. Navigate to the `/terraform` directory      
### 3. Initialize Terraform:
```bash
$ terraform init
```    
### 4. Create and provision infrastructure:
```bash
$ terraform apply -auto-approve
```     
### 5. Have a cup of tea/coffee and let Terraform work its magic!     

    
## Note:
**Current version:**
- Sets up the **"skeleton"** for the platform.
  - Networking
  - Security groups
  - Required components
  - etc..    

Some connections are done. **Some or not!**      
**For example:** 
- By using the LB DNS name, you're able to access the app server behind the Nginx reverse proxy.
- Connecting the app server to the S3 bucket still requires manual intervention for the time being (so it's not 100% automated).     
 
## Stay tuned for:
***Configuration management:*** Probably using Ansible.     
**Route 53:** Custom domain.    
**TLS**     
***Modularization:*** Refactoring the Terraform codebase to a fully modular version.     

## Before applying:
Tweak the configs to suit your own needs (if needed) => VPC, security, DB etc..          
The Terraform template **does** provide a robust setup with built-in default values.     
**If nothing else**, remember to configure your `pub/key/path` in `locals.tf` for SSH to work!     


# Diagram
<img width="4182" height="1475" alt="CICD drawio" src="https://github.com/user-attachments/assets/98c82647-5c5e-4b58-8d79-fb23e8ef501c" />


# WorkFlow
Client pushes code to Gitea **-->** Repository data is stored in S3, metadata in PostgreSQL RDS.     
Gitea triggers Jenkins via webhooks on new commits **-->** Jenkins then orchestrates agents to execute test/build pipelines.    
Build artefacts are uploaded to **-->** S3 (bucket is accessed through a VPC endpoint).       
Redis ElastiCache improves Gitea performance by caching data and storing user sessions in memory.
