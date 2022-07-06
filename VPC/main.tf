provider "google" {
  project = "ravi-mi"
  region  = "us-central1"
  zone    = "us-central1-a"
}
// resource "google_compute_network" "vpc_network" {
  // name = "drk-vpc"
//}
network_interface {
     network  = google_compute_network.vpc_network.id
     subnetwork = "ravi-mi-subnetwork"
     access_config {
      // Ephemeral IP
     }
 }
 resource "google_compute_subnetwork" "subnetwork" {
  name          = "ravi-mi-subnetwork"
  ip_cidr_range = "10.3.0.0/16"
  region        = "us-central1"
  network  = google_compute_network.vpc_network.id
 
   }
  resource "google_compute_network" "vpc_network" {
  project                 = "ravi-mi"
  name                    = "drk"
  auto_create_subnetworks = false
  mtu                     = 1460
  }
