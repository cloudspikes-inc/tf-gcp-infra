# Source = https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster#example-usage---with-a-separately-managed-node-pool-recommended

resource "google_container_cluster" "test_cluster" {
  name                = var.cluster_name
  deletion_protection = var.deletion_protection
  project             = "inlaid-ally-373906"
  location            = var.cluster_location
  subnetwork          = "default"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  project    = "inlaid-ally-373906"
  location   = "us-central1"
  cluster    = google_container_cluster.test_cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # service_account = google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}