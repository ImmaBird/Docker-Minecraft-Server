resource "google_compute_instance" "server" {
  project      = "minecraft-228318"
  name         = "minecraft"
  zone         = "us-east1-b"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      size  = 10
      type  = "pd-standard"
      image = "gce-uefi-images/cos-stable"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }

  metadata_startup_script = "docker run --rm -dP -v world:/minecraft immabird/minecraft"
}
