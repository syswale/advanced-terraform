# modules/vpc/variables.tf

variable "vpc_name" {
  description = "A name for this VPC (used in tags)"
  type        = string
}

variable "cidr_block" {
  description = "The IP range for the whole VPC, e.g. 10.0.0.0/16"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "IP range for public subnet 1, e.g. 10.0.1.0/24"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "IP range for public subnet 2, e.g. 10.0.2.0/24"
  type        = string
}

variable "az_1" {
  description = "Availability zone for subnet 1, e.g. us-east-1a"
  type        = string
}

variable "az_2" {
  description = "Availability zone for subnet 2, e.g. us-east-1b"
  type        = string
}
