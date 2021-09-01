resource "tfe_organization" "sean-ahn" {
  name  = "sean-ahn"
  email = "sean9509@gmail.com"
}

resource "tfe_workspace" "iac" {
  name                = "iac"
  organization        = tfe_organization.sean-ahn.name
  speculative_enabled = true
  queue_all_runs      = false
  vcs_repo {
    identifier     = "sean-ahn/iac"
    oauth_token_id = ""
  }
}
