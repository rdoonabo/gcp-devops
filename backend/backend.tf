terraform {
  backend "gcs" {
    bucket = "startupscript_01"
    prefix      = "backend"
    credentials = "terraform.json"
  }
}