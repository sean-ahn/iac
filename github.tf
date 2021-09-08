resource "github_repository" "iac" {
  name          = "iac"
  visibility    = "public"
  description   = "Infrastructure as Code"
  has_wiki      = false
  has_projects  = false
  has_downloads = false
  has_issues    = true
  archived      = false
  topics = [
    "infrastructure-as-code",
    "iac",
    "terraform",
    "terraform-cloud"
  ]
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true
  auto_init              = null
  gitignore_template     = null
  license_template       = ""
  homepage_url           = "https://app.terraform.io/app/sean-ahn/workspaces/iac"
}

resource "github_repository" "gotzdatacheck" {
  name          = "gotzdatacheck"
  visibility    = "public"
  description   = "gotzdatacheck checks that the time/tzdata package is imported into the main package"
  has_wiki      = false
  has_projects  = false
  has_downloads = false
  has_issues    = true
  archived      = false
  topics = [
    "golang"
  ]
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true
  auto_init              = null
  gitignore_template     = null
  license_template       = ""
  homepage_url           = ""
}
