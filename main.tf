# https://www.terraform.io/docs/providers/pagerduty/r/team_membership.html

# TODO:
#   option to use user emails or IDs

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.1"
  value   = "${var.enabled}"
}

data "pagerduty_user" "team_members" {
  count = "${module.enabled.value ? length(var.member_emails) : 0}"
  email = "${var.member_emails[count.index]}"
}

resource "pagerduty_team_membership" "this" {
  count   = "${module.enabled.value ? length(var.member_emails) : 0}"
  team_id = "${var.team_id}"
  user_id = "${element(data.pagerduty_user.team_members.*.id, count.index)}"
}
