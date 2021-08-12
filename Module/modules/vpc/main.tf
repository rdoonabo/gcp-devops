provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region  = var.region
  
}

resource "google_compute_network" "vpc_network" {
  name = var.network
}

