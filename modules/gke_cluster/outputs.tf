output "cluster_name" {
  value = google_container_cluster.test_cluster.name
}

output "cluster_id" {
  value = google_container_cluster.test_cluster.id
}

output "cluster_self_link" {
  value = google_container_cluster.test_cluster.self_link
}