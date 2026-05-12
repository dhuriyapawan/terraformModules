

variable "domain_name" {
  description = "Primary domain name for ACM certificate"
  type        = string
  default     = null
}

variable "subject_alternative_names" {
  description = "Additional SAN domains"
  type        = list(string)
  default     = []
}

variable "zone_name" {
  description = "Route53 hosted zone name"
  type        = string
  default    = null
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)

  default = {
    Environment = "dev"
    Terraform   = "true"
  }
}