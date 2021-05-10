terraform {
  backend "gcs" {
    bucket = "nasa7733-lab-terraform-state"
    prefix      = "backend"
    credentials = "terraform.json"
  }
}
