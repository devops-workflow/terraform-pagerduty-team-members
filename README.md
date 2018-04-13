[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-pagerduty-team-members.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-pagerduty-team-members)

# terraform-pagerduty-team-members

Terraform module for managing PagerDuty team members.


### Usage

```hcl
module "team-members" {
  source        = "devops-workflow/team-members/pagerduty"
  version       = "0.0.1"
  member_emails = ["user1@example.com", "user2@example.com"]
  team_id       = "TEAM_ID"
}
```
