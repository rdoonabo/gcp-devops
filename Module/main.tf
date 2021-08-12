module vpc {
    source      = "./modules/vpc"
    credentials = var.credentials
    network        = var.network

}

module gce {
    source      = "./modules/gce"
    name        = var.name
}

