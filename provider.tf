variable "github_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token = var.github_token
}

variable "terraform_cloud_token" {
  type      = string
  sensitive = true
}

provider "tfe" {
  token = var.terraform_cloud_token
}
