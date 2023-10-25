# module "compute-engine" {
#   source                  = "../../modules/compute_engine"
#   name                    = var.name
#   machine_type            = var.machine_type
#   zone                    = var.zone
#   description             = var.description
#   network_tags            = var.network_tags
#   project                 = var.project
#   image                   = var.image
#   network                 = var.network
#   subnetwork              = var.subnetwork
#   subnetwork_project      = var.subnetwork_project
#   service_account_details = var.service_account_details
# }

module "gke-cluster" {
  source                   = "../../modules/gke_cluster"
  cluster_name             = var.cluster_name
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
  cluster_location         = var.cluster_location
  deletion_protection      = var.deletion_protection
}