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
    manage_policies     = true
    manage_workspaces   = true
    manage_vcs_settings = true
  }

}

resource "tfe_team_access" "example" {
  access = "admin"
  team_id = tfe_team.managing_teams.0.id
  workspace_id = "${tfe_workspace.example.3.id}"
}


