

variable "location" {
  description = "The Azure region to deploy resources into"
  type        = string
  default     = "West Europe"
}

variable "cluster_name" {
  default = "aks-springboot-dev"
}

variable "acr_name" {
  default = "springbootdevacr"
}
