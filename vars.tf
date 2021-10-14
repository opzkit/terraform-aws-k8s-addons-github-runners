// Create Github Client App for organization following
// https://github.com/actions-runner-controller/actions-runner-controller#deploying-using-github-app-authentication
variable "gh_app_id" {
  type        = string
  description = "Github App ID for Github Runners access"
}

variable "gh_installation_id" {
  type        = string
  description = "Github Installation ID for Github Runners access"
}

variable "gh_client_secret" {
  type        = string
  description = "Github Client Secret for Github Runners access"
  sensitive   = true
}

variable "ssh_priv_key" {
  type        = string
  description = "Private SSH key that has access to access Github repo"
  sensitive   = true
}

variable "buildtools_content" {
  type        = string
  description = "A valid buildtools yaml configuration file"
}
