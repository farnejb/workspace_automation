variable "workspace_names" {
  type = list(string)
}

variable "managing_team_list" {
  type = list(string)
  default = ["Admin", "Networking", "Security"]
}

variable "hostname" {
  type = string
}

variable "org" {
  type = string
}
/* variable "api_token" {
  type = string
} */