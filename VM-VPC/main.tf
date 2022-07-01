provider "google" {
  project = "ravi-mi"
  credentials = file("terraform.json")
  region  = "europe-west2"
  zone    = "europe-west2-a"
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
  resource "google_compute_subnetwork" "subnetwork" {
  name          = "ravimi-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "europe-west2"
  network       = google_compute_network.vpc_network.id
 
}
  resource "google_compute_network" "vpc_network" {
  project                 = "ravi-mi"
  name                    = "vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}
    }
  }
}

