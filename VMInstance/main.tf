# This is the provider used to spin up the gcloud instance
provider "google" {
 
  project = "ravi-mi"
  credentials = file("terraform.json")
  region  = "us-central1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-central-c"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    
  network_interface {
    network = "ravi"

    access_config {
      // Ephemeral IP
    }
  }
}


