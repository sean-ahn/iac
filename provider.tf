variable "github_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token = "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"
}

variable "terraform_cloud_token" {
  type      = string
  sensitive = true
}

provider "tfe" {
  token = var.terraform_cloud_token
}
