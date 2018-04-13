variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "member_emails" {
  default = []
}

variable "team_id" {
  default = ""
}
