# Boiterplate Angular/Terraform

The purpose of this repository is to offer you a rapid deployment of your Angular application on AWS. The Terraform script will deploy an S3, a Pipeline and a CloudFront distribution

## Installation Step

- Install Terraform
- Configure your aws credential
- Install Angular cli `npm i -g @angular/cli`
- Init your angular app with `ng new app`
- Update var in `terraform.tfvars`
- Run `terraform init`
- Run `terraform apply`
  This first run will failed because a certificat has been created but not validate. You should have received one email on webmaster@domain, admin@domain, administrator@domain, hostmaster@domain. You have to validate the certificat before re-launch this command.

## Author

François Dexemple - https://github.com/filol
