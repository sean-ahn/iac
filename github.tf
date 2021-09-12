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

resource "github_branch_protection" "iac:main" {
  repository_id = github_repository.iac.name
  pattern       = "main"
  required_status_checks {
    strict   = true
    contexts = ["Terraform Cloud/sean-ahn/iac", "lint", "terraform"]
  }
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

resource "github_repository" "blog-web" {
  name          = "blog-web"
  visibility    = "public"
  description   = ""
  has_wiki      = false
  has_projects  = false
  has_downloads = false
  has_issues    = true
  archived      = false
  topics = [
    "typescript",
    "reactjs",
    "nextjs",
    "tailwindcss"
  ]
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true
  auto_init              = null
  gitignore_template     = null
  license_template       = ""
  homepage_url           = "blog-web-flame.vercel.app"
}
