variable "github_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token = var.github_token
}
