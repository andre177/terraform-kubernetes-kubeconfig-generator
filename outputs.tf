output "kubeconfig_content" {
  description = "Generated kubeconfig content"
  value       = templatefile("${path.module}/kubeconfig.tftpl", { server = var.server, service_account = var.service_account, namespace = var.namespace, cluster_ca_data = var.cluster_ca_data, cluster_name = var.cluster_name, context = var.context, token = var.token })
}