locals {
  version = "0.0.1"
  yaml = templatefile("${path.module}/gha-runner-scale-set.yaml", {
    github_config_secret = var.github_config_secret
    github_config_url    = var.github_config_url
    max_runners          = var.max_runners
    min_runners          = var.min_runners
    runner_group         = var.runner_group
    runner_name          = var.runner_name
    namespace            = var.namespace
    version              = local.version
  })
}
