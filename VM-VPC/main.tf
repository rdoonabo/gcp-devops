provider "google" {
  project = "drkumar"
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
  } 
  resource "google_compute_network" "vpc_network" {
  name  = "drk-network"
}



