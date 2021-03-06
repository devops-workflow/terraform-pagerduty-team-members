module "teams" {
  source          = "devops-workflow/teams/pagerduty"
  version         = "0.0.1"
  pagerduty_token = "${var.pagerduty_token}"

  teams = [
    {
      name        = "Test-Team"
      description = "Terraform testing"
    },
  ]
}

module "team_members" {
  source        = "../../"
  member_emails = ["user1@example.com", "user2@example.com", "user3@example.com"]
  team_id       = "${element(module.teams.ids, 0)}"
}
