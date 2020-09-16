provider "tfe" {
  hostname = "firefly.tfe.rocks"
}

resource "tfe_workspace" "example" {
  count        = length(var.workspace_names)
  name         = var.workspace_names[count.index]
  organization = "my-org"
}

/* resource "tfe_workspace" "test" {
  name         = "my_automated_workspace"
  organization = "my-org"
}

resource "tfe_workspace" "test2" {
  name = "second_workspace"
  organization = "test-org"
}

resource "tfe_team" "first_team" {
  name         = "first-team"
  organization = "test-org"
} */


