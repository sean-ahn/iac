resource "tfe_organization" "sean-ahn" {
  name  = "sean-ahn"
  email = "sean9509@gmail.com"
}

# Currently not supported
# See also https://github.com/sean-ahn/iac/pull/5.
# resource "tfe_workspace" "iac" {
#   name                = "iac"
#   organization        = tfe_organization.sean-ahn.name
#   speculative_enabled = true
#   queue_all_runs      = false
#   vcs_repo {
#     identifier     = "sean-ahn/iac"
#     oauth_token_id = ""
#   }
# }
