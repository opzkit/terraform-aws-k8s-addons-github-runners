module "runners" {
  source               = "../.."
  github_config_secret = "secret"
  github_config_url    = "url"
}

output "yaml" {
  value = module.runners.addons
}
