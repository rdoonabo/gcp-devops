variable "project" {
  description = "The project ID to deploy to"
  default = "midevlab"
}

variable "region" {
  description = "The region to deploy to"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy to"
  default     = "us-central1-a"
}

variable "network" {
  description = "The instance to deploy to"
  default     = "terraform-networks"
}

variable "credentials" {
  default = "terraform.json"
}
