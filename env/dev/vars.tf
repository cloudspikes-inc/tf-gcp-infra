# Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
# GCP CE Specific variables.
variable "name" {
  type        = string
  description = "(Required) A unique name for the resource"
}

variable "machine_type" {
  type        = string
  description = "(Required) The machine type to create"
}

variable "zone" {
  type        = string
  description = "(Required) The zone that the machine should be created in"
}

variable "description" {
  type        = string
  default     = ""
  description = "A brief description of this instance"
}

variable "project" {
  type        = string
  description = "The project id in which the instance is going to be deployed"
}

variable "network" {
  type        = string
  description = "The network id in which the instance is going to be setup"
}

variable "subnetwork" {
  type        = string
  description = "The name of the subnetwork to attach this instance to. The subnetwork must exist in the same region this instance will be created in. Either network or subnetwork must be provided."
}

variable "subnetwork_project" {
  type        = string
  default     = ""
  description = "The project in which the subnetwork belongs"
}

variable "image" {
  type        = string
  description = "The image from which to initialize this disk"
}

variable "network_tags" {
  type        = list(string)
  default     = []
  description = "The network tags to assign to this instance"
}

variable "service_account_details" {
  type = list(object({
    email  = string
    scopes = list(string)
  }))
  default = []
}
#   email description  = "The service account e-mail address. If not given, the default Google Compute Engine service account is used."
#   scopes description = "A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope. See a complete list of scopes here: https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes"


# GKE Specific variables:
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