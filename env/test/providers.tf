provider "google" {
  project = "inlaid-ally-373906"
  region  = "us-central1"
  # zone    = "<YOUR ZONE>"
  credentials = var.gcp_creds
}