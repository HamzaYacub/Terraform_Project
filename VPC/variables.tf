variable "cidr" {
  description = "CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_cidr" {
  description = "CIDR Block for subnet"
  default     = "10.0.172.0/24"
}

variable "dns_hostname" {
  description = "Do you want to enable the dns hostname"
  default     = true
}