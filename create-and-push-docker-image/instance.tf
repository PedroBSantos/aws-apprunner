resource "docker_registry_image" "build-and-push" {
  name       = "${var.aws_ecr_url}/${var.aws_ecr_repository}:latest"
  build {
    context      = replace("${path.cwd}", "/ci/create-and-push-docker-image", "")
    dockerfile   = "Dockerfile"
    force_remove = true
    remove       = true
  }
}
