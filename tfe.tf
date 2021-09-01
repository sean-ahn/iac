resource "tfe_organization" "sean-ahn" {
  name  = "sean-ahn"
  email = "sean9509@gmail.com"
}

resource "tfe_workspace" "iac" {
  name         = "iac"
  organization = tfe_organization.sean-ahn.name
}
