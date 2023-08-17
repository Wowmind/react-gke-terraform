output "app-ip" {
    value = google_compute_global_address.external_static_ip.address
    description = "External staticn IP for React GKE app"
}