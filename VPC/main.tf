provider "google" {
  project = "ravi-mi"
  region  = "us-central1"
  zone    = "us-central1-a"
}
resource "google_compute_network" "vpc_network" {
  project                 = "ravi-mi"
  name                    = "rrr"
  auto_create_subnetworks = true
  mtu                     = 1460
}


