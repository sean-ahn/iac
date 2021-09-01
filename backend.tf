terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    tfe = {
      version = "~> 0.25.0"
    }
  }

  backend "remote" {
    organization = "sean-ahn"

    workspaces {
      name = "iac"
    }
  }

  required_version = ">= 1.0.0"
}
