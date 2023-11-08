source "amazon-ebs" "ubuntu" {
  ami_name      = "ubuntu-aws-{{timestamp}}"
  instance_type = var.instance_type
  vpc_id        = var.vpc_id
  subnet_id     = var.subnet_id
  ami_regions   = var.ami_regions
  
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-20230919"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
  tags = {
    "Name"        = "TestImage"
    "Environment" = "Dev"
    "OS_Version"  = "Ubuntu"
    "Created-by"  = "Packer"
  }
}

build {
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

    provisioner "shell" {
    inline = [
      "echo Installing Updates"
    ]
  }

  post-processor "manifest" {}
}
