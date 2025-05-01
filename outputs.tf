output "addons" {
  value = [{
    content = local.yaml
    version = "0.0.1"
    name    = "github-runners"
  }]
}
