apiVersion: v1
kind: Namespace
metadata:
  name: actions-runner-system
---
apiVersion: v1
kind: Secret
metadata:
  name: controller-manager
  namespace: actions-runner-system
type: Opaque
stringData:
  github_app_id: "${app}"
  github_app_installation_id: "${installation}"
data:
  github_app_private_key: ${base64encode(secret)}

---
apiVersion: v1
kind: Secret
metadata:
  name: ssh-secret
  namespace: github-runners
data:
  id_rsa: ${filebase64(ssh_key)}
  known_hosts: ${base64encode("github.com ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==")}

---
apiVersion: v1
kind: ConfigMap
metadata:
  name: buildtools
  namespace: github-runners
data:
  .buildtools.yaml: ${base64encode(buildtools_content)}
