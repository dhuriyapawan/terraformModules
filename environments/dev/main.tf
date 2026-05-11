terraform {
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}
module "acm" {
  source = "../../modules/acm"
}
# module "vpc" {
#   source = "../../modules/vpc"
# }

# module "api_gateway" {
#   source = "../../modules/api-gateway"
# }