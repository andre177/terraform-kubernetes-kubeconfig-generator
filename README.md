# terraform-kubernetes-kubeconfig-generator
Generate a kubeconfig file for a given service account

### Example:
```HCL
module "kubeconfig-generator" {
  source          = "andre177/kubeconfig-generator/kubernetes"
  version         = "0.0.1"
  server          = "https://<my-k8s-cluster-endpoint>"
  service_account = "<my-service-account>"
  cluster_ca_data = "<k8s-cluster-ca-data>"
  cluster_name    = "<k8s-cluster-name>"
  context         = "<context-to-connect>"
  token           = "<service account token>"
}
```
