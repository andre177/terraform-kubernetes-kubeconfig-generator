resource "local_file" "kubeconfig" {
  count    = var.generate_kubeconfig_file ? 1 : 0
  content  = templatefile("${path.module}/kubeconfig.tftpl", { server = var.server, service_account = var.service_account, namespace = var.namespace, cluster_ca_data = var.cluster_ca_data, cluster_name = var.cluster_name, context = var.context, token = var.token })
  filename = var.filename
}

output "kubeconfig_content" {
  value = templatefile("${path.module}/kubeconfig.tftpl", { server = var.server, service_account = var.service_account, namespace = var.namespace, cluster_ca_data = var.cluster_ca_data, cluster_name = var.cluster_name, context = var.context, token = var.token })
}