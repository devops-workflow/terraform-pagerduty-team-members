variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "member_emails" {
  description = "List of email addresses of members to manage in team"
  type        = "list"
}

variable "team_id" {
  description = "ID of the team to manage members in"
}
