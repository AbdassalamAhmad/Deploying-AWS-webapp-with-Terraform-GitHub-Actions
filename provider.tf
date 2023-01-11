terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # Minor version updates are intended to be non-disruptive
    }
  }
}

provider "aws" {
  region = var.region
  #profile = "default" # removing this line solve an issue in github actions. # this can be used for different aws accounts
}
