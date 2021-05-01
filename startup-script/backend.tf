terraform {
  backend "gcs" {
    bucket = "mi-pipeline-terraform"
    prefix      = "backend"
    credentials = "terraform.json"
  }
}
