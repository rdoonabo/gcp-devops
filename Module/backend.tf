terraform {
  backend "gcs" {
    bucket = "midevlab-state"
    prefix      = "modules"
    credentials = "terraform.json"
  }
}
