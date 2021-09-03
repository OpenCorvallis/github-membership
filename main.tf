resource "github_membership" "members" {
  for_each = toset(var.members)
  username = each.key
  role     = "member"
}

resource "github_team_membership" "members" {
  for_each = toset(compact(distinct(concat(var.members, var.admins))))
  username = each.key
  team_id  = github_team.members.id
}

resource "github_team" "members" {
  name        = "members"
  description = "OpenCorvallis Members"
  privacy     = "closed"
}

resource "github_membership" "admins" {
  for_each = toset(var.admins)
  username = each.key
  role     = "admin"
}

resource "github_team_membership" "admins" {
  for_each = toset(var.admins)
  username = each.key
  team_id  = github_team.admins.id
  role     = "member"
}

resource "github_team" "admins" {
  name        = "admins"
  description = "OpenCorvallis Admins"
  privacy     = "closed"
}

resource "github_membership" "bots" {
  for_each = toset(var.bots)
  username = each.key
  role     = "member"
}

resource "github_team_membership" "bots" {
  for_each = toset(var.bots)
  username = each.key
  team_id  = github_team.bots.id
}

resource "github_team" "bots" {
  name        = "bots"
  description = "OpenCorvallis Bots"
  privacy     = "closed"
}
