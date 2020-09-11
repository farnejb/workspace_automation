provider "aws" {
  region = "us-east-1"
}

resource "tfe_workspace" "test" {
    name    = "my_automated_workspace"
    organization = "my-org"
}

