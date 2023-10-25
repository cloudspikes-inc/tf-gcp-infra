variable "cluster_name" {
  type        = string
  description = "Name for the GKE Cluster."
}

variable "cluster_location" {
  type        = string
  description = "Location for the GKE Cluster."
}

variable "remove_default_node_pool" {
  type        = bool
  description = "Remove default node pool for the GKE Cluster."
}

variable "initial_node_count" {
  type        = number
  description = "Remove default node pool for the GKE Cluster."
}

variable "deletion_protection" {
  type        = bool
  description = "Delete protection prop for the GKE Cluster."
}