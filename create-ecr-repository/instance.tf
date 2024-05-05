resource "aws_ecr_repository" "create" {
  name                 = var.aws_ecr_repository
  count                = data.external.check_repo.result.success == "true" ? 0 : 1
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = false
  }
}
