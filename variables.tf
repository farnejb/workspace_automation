variable "workspace_names" {
  type = list(string)
  default = ["AWS-Networking-SBX", "AWS-Networking-DEV", "AWS-Networking-TST", "AWS-Networking-PRD"]
}

variable "managing_team_list" {
  type = list(string)
  default = ["Admin", "Networking", "Security"]
}
/* variable "api_token" {
  type = string
} */