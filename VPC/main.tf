provider "google" {
  project = "ravi-mi"
  region  = "us-central1"
  zone    = "us-central1-a"
}
 resource "google_compute_network" "vpc_network" {
  name  = "drk-network"
}


