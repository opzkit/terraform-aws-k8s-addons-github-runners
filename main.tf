locals {

  github_runners_yaml = templatefile("${path.module}/content.tpl", {
    app                = var.gh_app_id
    installation       = var.gh_installation_id
    secret             = var.gh_client_secret
    ssh_key            = var.ssh_priv_key
    buildtools_content = var.buildtools_content
  })
}
