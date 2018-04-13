module "team_members" {
  source        = "../../"
  enabled       = false
  member_emails = ["user@example.com"]
  team_id       = "TEAM_ID"
}
