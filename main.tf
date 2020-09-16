provider "tfe" {
  hostname = "firefly.tfe.rocks"
}

resource "tfe_workspace" "example" {
  count        = length(var.workspace_names)
  name         = var.workspace_names[count.index]
  organization = "my-org"
}

resource "tfe_team" "first_team" {
  name         = "first-team"
  organization = "test-org"
} */


