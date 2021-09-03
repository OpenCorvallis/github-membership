terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }

  required_version = ">= 1.0.0"

  backend "local" {}
}

provider "github" {
  owner = "OpenCorvallis"
  token = var.github_token
}
