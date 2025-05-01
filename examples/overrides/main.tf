module "runners" {
  source               = "../.."
  github_config_secret = "secret"
  github_config_url    = "url"
  namespace            = "override"
  max_runners          = 1
  min_runners          = 0
  runner_group         = "group"
  runner_name          = "runnnnnnnn"
}

output "yaml" {
  value = module.runners.addons
}
