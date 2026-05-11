variable "account_id" {
  description = "The AWS Account ID to use for provisioning resources"
  type        = string
  default     = null
}

variable "region" {
  description = "Region where the resource will be managed. Defaults to the region set in the provider configuration"
  type        = string
  default     = null
}

variable "deployment_profile" {
  type        = string
  default     = "dev"
  description = "AWS Profile to use in Terraform Providers"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment to deploy"
}

variable "prefix_name" {
  description = "This is the the prefix name to use for naming resources"
  type        = string
  default     = "dev-use2"
}

variable "tf_deployment_version" {
  description = "This is the version for terraform github action"
  type        = string 
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}


variable "domain_name" {
  description = "Domain name for ACM"
  type = string
}

variable "subject_alternative_names" {
  description = "Alternative names for ACM"
}

variable "zone_id" {
  description = "Zone ID"
  type = string
}

variable "validation_method" {
  description = "Validation method for ACM"
  type = string
  default = "DNS"
}

variable "ttl" {
  description = "Time to live for route53 record"
  type = number
  default = 60
  
}

