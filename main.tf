provider "tfe" {
  hostname = "firefly.tfe.rocks"
}

resource "tfe_workspace" "example" {
  count        = length(var.workspace_names)
  name         = var.workspace_names[count.index]
  organization = "my-org"
}

resource "tfe_team" "managing_teams" {
  count        = length(var.managing_team_list)
  name         = var.managing_team_list[count.index]
  organization = "my-org"
  visibility   = "organization"
  organization_access {
    manage-policies     = true
    manage-workspaces   = true
    manage-vcs-settings = true
  }

}


