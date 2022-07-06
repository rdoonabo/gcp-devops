provider "google" {
  project = "ravi-mi"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_compute_network" "vpc_network" {
  name = "kumar-networks"
}

