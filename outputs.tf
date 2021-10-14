output "addon" {
  value = {
    content = local.github_runners_yaml
    version = "0.0.1"
    name    = "github-runners"
  }
}
