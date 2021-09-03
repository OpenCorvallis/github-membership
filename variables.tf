variable "admins" {
  type        = list(string)
  description = "A list of admin accounts"
}

variable "bots" {
  type        = list(string)
  description = "A list of bot accounts"
}

variable "members" {
  type        = list(string)
  description = "A list of member accounts"
}

variable "github_token" {
  type        = string
  description = "GitHub Access Token"
}
