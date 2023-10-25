resource "google_compute_instance" "compute_instance" {
  name = var.name
  # bcg-gce-sec-ss-ro-soc-soar-usc1-01
  machine_type = var.machine_type
  # e2-standard-16
  zone = var.zone
  # us-central1-a
  description = var.description
  # soc-soar
  project = var.project
  # bcg-prj-sec-ss-soc-usc1-01

  # labels                    = var.labels
  # deletion_protection       = var.deletion_protection
  # allow_stopping_for_update = var.allow_stopping_for_update

  boot_disk {
    initialize_params {
      image = var.image
      # rhel-8
    }
  }

  network_interface {
    network            = var.network
    subnetwork         = var.subnetwork
    subnetwork_project = var.subnetwork_project

    # dynamic "access_config" {
    #   for_each = var.create_ephemeral_ip
    #   content {
    #     network_tier = access_config.value
    #   }
    # }
  }


  tags = var.network_tags # This is network tags
  # bcg-ntg-sec-ss-soc-soar

  # metadata = {
  #   enable-osconfig = true
  #   enable-guest-attributes = true
  # }

  # metadata_startup_script = var.metadata_startup_script


  # For permission management --> ACL_GCP_Security_Application | Admins
  dynamic "service_account" {
    for_each = [for i in var.service_account_details : {
      email  = i.email
      scopes = i.scopes
    }]
    content {
      email  = service_account.value.email
      scopes = service_account.value.scopes
    }
  }
}