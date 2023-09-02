variable "server" {
  description = "Cluster API endpoint"
  type        = string
}

variable "service_account" {
  description = "Service account name"
  type        = string
}

variable "namespace" {
  description = "Service account's namespace"
  type        = string
  default     = "default"
}

variable "cluster_ca_data" {
  description = "Cluster's CA data"
  type        = string
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "filename" {
  description = "Output file name and path"
  type        = string
  default     = "./kubeconfig"
}

variable "token" {
  description = "Service account's token"
  type        = string
}

variable "context" {
  description = "Context you wanto to connect to"
  type        = string
}

variable "generate_kubeconfig_file" {
  description = "If true, a local kubeconfig will be generated. If false, it generates only the output"
  type        = bool
  default     = false
}