provider "tfe" {
  token = var.api_token
}

resource "tfe_workspace" "test" {
  name         = "my_automated_workspace"
  organization = "my-org"
}

