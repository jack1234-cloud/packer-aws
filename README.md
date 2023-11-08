# packer-aws
sample packer template for building ubuntu images

## Connect to AWS Account
aws configure 

## Run commands below
packer init
packer fmt
packer build -var-file=env-config/dev.pkrvars..hcl .
