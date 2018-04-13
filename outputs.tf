output "user_email" {
  description = "List of team member's emails"
  value       = "${var.member_emails}"
}

output "user_id" {
  description = "List of team member's IDs"
  value       = "${pagerduty_team_membership.this.*.user_id}"
}

output "user_name" {
  description = "List of team member's names"
  value       = "${data.pagerduty_user.team_members.*.name}"
}

output "team_id" {
  description = "Team ID"
  value       = "${element(concat(pagerduty_team_membership.this.*.team_id, list("")), 0)}"
}
