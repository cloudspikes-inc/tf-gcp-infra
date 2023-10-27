# tf-gcp-infra
===============

Testing out the TF scripts to automate the GCP Infra service deployments.

## Prerequisites:
Need to have terraform CLI, Gcloud CLI, Git CLI and VS Code IDE (Only if coding) installed on the system where you are testing the GKE/GCE TF module.

## Steps to execute the TF scripts:

$ gcloud auth login

$ gcloud config list

$ gcloud auth application-default login

$ cd env/test

$ terraform init

$ ls -la

$ terraform fmt

$ terraform validate

$ ls -la

$ terraform validate

$ terraform plan -out test-plan.out

$ terraform apply "test-plan.out"

$ ls -la

$ terraform show

## Only if you are sure and want to delete the infra.
terraform destroy -auto-approve

### Author --> Dhruv R.
https://www.linkedin.com/in/dhruv-rana-cloudspikes/
