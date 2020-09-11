provider "tfe" {
  
}

resource "tfe_workspace" "test" {
  name         = "my_automated_workspace"
  organization = "my-org"
}

