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