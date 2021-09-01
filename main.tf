resource "github_repository" "gotzdatacheck" {
  name          = "gotzdatacheck"
  private       = false
  description   = "gotzdatacheck checks that time/tzdata package has imported in main package"
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
  auto_init              = null
  gitignore_template     = null
  license_template       = ""
  homepage_url           = ""
}
