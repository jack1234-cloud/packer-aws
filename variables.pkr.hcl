variable "vpc_id" {
  type        = string
  default     = "xxxx"
  description = "What VPC is this ami in?"
}

variable "subnet_id" {
  type        = string
  default     = "xxxx"
  description = "What subnet is this ami in?"
}

variable "aws_region" {
  type        = string
  default     = "${env("AWS_REGION")}"
}

variable "instance_type" {
  type        = string
  default     = "xxxx"
  description = "What instance type is being deployed"
}

variable "ami_regions" {
  # type        = list
  default     = []
  description = "list of ami's per region"
}
