output "addons" {
  value = [{
    content = local.yaml
    version = local.version
    name    = "github-runners"
  }]
}
