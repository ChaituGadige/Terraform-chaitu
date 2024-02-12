terraform {
  cloud {
    organization = "Terraform-chaitu"

    workspaces {
      name = "terraform-chaitu"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
