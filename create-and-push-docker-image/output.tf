output "docker_image_name" {
  value       = docker_registry_image.build-and-push.name
  description = "Nome da imagem criada"
}

output "docker_image_sha" {
  value       = docker_registry_image.build-and-push.sha256_digest
  description = "SHA256 image digest"
}
