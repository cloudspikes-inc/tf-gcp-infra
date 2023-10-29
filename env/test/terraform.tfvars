# GCP CE specific variables.
name               = "bcg-gce-sec-ss-ro-soc-soar-usc1-01"
machine_type       = "e2-standard-16"
zone               = "us-central1-a"
description        = "soc-soar"
network_tags       = ["bcg-ntg-sec-ss-soc-soar"]
project            = "inlaid-ally-373906"
image              = "projects/rhel-cloud/global/images/rhel-8-v20231010"
network            = "default"
subnetwork         = "default-us-central1"
subnetwork_project = "inlaid-ally-373906"

service_account_details = [{
  email  = "cloud-sql-proxy-vm-client@np-supplychain-sresandbox.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}]

# GKE Cluster specific variables.
cluster_name             = "test-gke-cluster"
remove_default_node_pool = true
initial_node_count       = 1
cluster_location         = "us-central1"
deletion_protection      = false

# Terraform commons
gcp_creds = "tf-ops.json"