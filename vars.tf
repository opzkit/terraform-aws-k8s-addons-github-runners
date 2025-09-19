variable "github_config_secret" {
  type        = string
  description = <<EOF
  The name of the k8s secret containing the Github authentication. It must be in the same namespace as declared by the `namespace` variable.
Read more about different authentications [here](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/authenticating-to-the-github-api)
EOF
  default     = "gha-rs-github-secret"
  validation {
    condition     = length(var.github_config_secret) >= 1
    error_message = "The github_config_secret cannot to empty"
  }
}

variable "github_config_url" {
  type        = string
  description = "The URL of your repository, organization, or enterprise. This is the entity that the runners will belong to. For example https://github.com/<your_enterprise/org/repo>"

  validation {
    condition     = length(var.github_config_url) >= 1
    error_message = "The github_config_url cannot to empty"
  }
}

variable "namespace" {
  type        = string
  description = "The k8s namespace for the runners"
  default     = "arc-runners"
  validation {
    condition     = length(var.namespace) >= 1
    error_message = "The namespace cannot to empty"
  }
}

variable "runner_name" {
  type        = string
  description = "The name for the runners, must match the 'runs-on' value in actions configuration."
  default     = "arc-runner-set"
  validation {
    condition     = length(var.runner_name) >= 1
    error_message = "The runner_name cannot to empty"
  }
}

variable "runner_group" {
  type        = string
  description = "The runner group for the runners, must exist on Github."
  validation {
    condition     = length(var.runner_group) >= 1
    error_message = "The runner_group cannot to empty"
  }
  default = "default"
}

variable "max_runners" {
  type        = number
  description = "The maximum number of runner (pods) to start"
  default     = 10
  validation {
    condition     = var.max_runners >= 1
    error_message = "The max_runners value must at least 1"
  }
}

variable "min_runners" {
  type        = number
  description = "The minimum number of runner (pods) to run"
  default     = 0
  validation {
    condition     = var.min_runners <= var.max_runners
    error_message = "The min_runners value must be less or equal to max_runners"
  }

  validation {
    condition     = var.min_runners >= 0
    error_message = "The min_runners value must at least 0"
  }
}
