output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_info" {
  value = {
    name      = google_compute_subnetwork.subnet.name
    cidr      = google_compute_subnetwork.subnet.ip_cidr_range
    region    = google_compute_subnetwork.subnet.region
    self_link = google_compute_subnetwork.subnet.self_link
  }
}

output "vm_public_ip" {
  value = google_compute_instance.web_server.network_interface[0].access_config[0].nat_ip
}

output "website_url" {
  value = "http://${google_compute_instance.web_server.network_interface[0].access_config[0].nat_ip}"
}