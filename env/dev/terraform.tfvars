# GCP CE specific variables.
name         = "test-instance"
machine_type = "e2-small"
zone         = "us-central1-a"
description  = "test instance for DevOps activities."
network_tags = ["test-instance"]
project      = "np-supplychain-sresandbox"
# image              = "projects/rhel-cloud/global/images/rhel-8-v20231010"
image              = "projects/debian-cloud/global/images/debian-11-bullseye-v20231010"
network            = "default"
subnetwork         = "default-us-central1"
subnetwork_project = "np-supplychain-sresandbox"

service_account_details = [{
  email  = "cloud-sql-proxy-vm-client@np-supplychain-sresandbox.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}]

# GKE Cluster specific variables.
cluster_name             = "test-gke-cluster"
remove_default_node_pool = true
initial_node_count       = 2
cluster_location         = "us-central1"
deletion_protection      = false