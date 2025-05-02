output "addons" {
  value = [{
    content = local.yaml
    version = local.version
    name    = "github-runners-${var.runner_name}-${var.runner_group}"
  }]
}
