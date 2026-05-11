terraform {
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}
module "amc" {
  source = "../../modules/amc"
}
module "vpc" {
  source = "../../modules/vpc"
}

module "api_gateway" {
  source = "../../modules/api-gateway"
}