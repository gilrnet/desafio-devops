variable "region" {
  type        = string
  description = "Region where the cluster will be created."
  default     = "us-east-1"
}

//Vpc related variables

variable "vpc_name" {
  type        = string
  description = "Name used in the creation of vpc"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Cidr used in the creation of vpc"
}

variable "vpc_cidr_private_subnet_1" {
  type        = string
  description = "Cidr used in the creation of vpc private subnet"
}

variable "vpc_cidr_public_subnet_1" {
  type        = string
  description = "Cidr used in the creation of vpc public subnet"
}

variable "vpc_enable_nat_gateway" {
  type        = bool
  description = "enable_nat_gateway option in the creation of vpc private subnet"
  default = true
}

variable "vpc_single_nat_gateway" {
  type        = bool
  description = "single_nat_gateway option in the creation of vpc private subnet"
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = "enable_dns_hostnames option in the creation of vpc private subnet"
  default = true
}