provider "google" {
  project = "ravi-mi"
  credentials = file("terraform.json")
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
  name = "test-vm-${count.index}"
  count        = 1
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
   # nenetwortwork  = google_compute_network.vpc_network.id
    #subnetwork = "ravi-mi-subnetwork"
network = "ravi"
    access_config {
      // Ephemeral IP
    }
  }
  }
/*
  resource "google_compute_subnetwork" "subnetwork" {
  name          = "ravi-mi-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network  = google_compute_network.vpc_network.id
 
   }
  resource "google_compute_network" "vpc_network" {
  project                 = "ravi-mi"
  name                    = "vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

*/


