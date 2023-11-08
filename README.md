# packer-aws
sample packer template for building ubuntu images

****Connect to AWS ****
aws configure 

**Build**
packer init
packer fmt
packer build -var-file=env-config/dev.pkrvars..hcl .
