provider "helm" {
  kubernetes {
    host                   = var.k8s_host
    client_certificate     = base64decode(var.k8s_client_certificate)
    client_key             = base64decode(var.k8s_client_key)
    cluster_ca_certificate = base64decode(var.k8s_cluster_ca_certificate)
  }
}

resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "2.9.10"
  namespace  = "monitoring"
  create_namespace = true
}

resource "helm_release" "promtail" {
  count      = length(var.aks_clusters)
  name       = "promtail-${count.index}"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "promtail"
  version    = "6.11.2"
  namespace  = "monitoring"
  create_namespace = false

  set {
    name  = "config.clients[0].url"
    value = "http://loki:3100/loki/api/v1/push"
  }
}