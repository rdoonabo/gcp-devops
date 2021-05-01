terraform {
  backend "gcs" {
    bucket = "test-mi"
    prefix      = "backend"
    credentials = "terraform.json"
  }
}
