terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-test-435"
    prefix  = "terraform/state"
  }
}
